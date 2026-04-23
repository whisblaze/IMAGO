#!/usr/bin/env python3
"""
IMAGO DB Migration Script
Reads data/NPCs.lua and produces:
  data/npcs/CAT_X.lua                 -- static fields only
  locales/enUS/data/npcs.lua          -- localized enUS
  locales/deDE/data/npcs.lua          -- localized deDE
"""

import re, os, sys

ROOT = os.path.dirname(os.path.abspath(__file__))
NPC_FILE = os.path.join(ROOT, "data", "NPCs.lua")

# ── directory creation ────────────────────────────────────────────────────────
for d in [
    "data/npcs",
    "locales/enUS/data",
    "locales/deDE/data",
]:
    os.makedirs(os.path.join(ROOT, d), exist_ok=True)

# ── read source ───────────────────────────────────────────────────────────────
with open(NPC_FILE, encoding="utf-8") as f:
    src = f.read()

# ── extract each top-level NPC block ─────────────────────────────────────────
# Pattern: IMAGOdb.npcs["slug"] = { ... }
# We'll split by top-level assignments
pattern = re.compile(
    r'IMAGOdb\.npcs\["([^"]+)"\]\s*=\s*\{',
    re.MULTILINE
)

matches = list(pattern.finditer(src))
blocks = []
for i, m in enumerate(matches):
    start = m.start()
    end = matches[i+1].start() if i+1 < len(matches) else len(src)
    # trim trailing stuff (the BuildReverseLookup function)
    chunk = src[start:end]
    blocks.append((m.group(1), chunk))

# ── helpers ───────────────────────────────────────────────────────────────────

def escape_lua_string(s):
    """Use [[ ]] for multi-line, quotes for single-line."""
    if "\n" in s:
        # use long string, sanitize any ]] inside
        s = s.replace("]]", "]] .. \"]]\" .. [[")
        return f"[[\n{s}]]"
    else:
        s = s.replace("\\", "\\\\").replace('"', '\\"')
        return f'"{s}"'

def lua_unescape(s):
    """Convert Lua escape sequences in a quoted string to plain Python string."""
    return s.replace('\\"', '"').replace("\\\\", "\\")

def extract_string_field(text, field):
    """Extract lore_enUS / lore_deDE / displayName_enUS etc. as raw string."""
    # Try long-string [[...]]
    pat_long = re.compile(
        rf'{re.escape(field)}\s*=\s*\[\[(.*?)\]\]',
        re.DOTALL
    )
    m = pat_long.search(text)
    if m:
        return m.group(1).strip()
    # Try quoted string
    pat_q = re.compile(
        rf'{re.escape(field)}\s*=\s*"((?:[^"\\]|\\.)*)',
        re.DOTALL
    )
    m = pat_q.search(text)
    if m:
        return lua_unescape(m.group(1))
    return None

def extract_string_array(text, field):
    """Extract zones_enUS = {...} as list of strings."""
    pat = re.compile(
        re.escape(field) + r'\s*=\s*\{([^}]*)\}',
        re.DOTALL
    )
    m = pat.search(text)
    if not m:
        return []
    inner = m.group(1)
    items = re.findall(r'"([^"]*)"', inner)
    return items

def extract_ids(text):
    pat = re.compile(r'ids\s*=\s*\{([^}]*)\}', re.DOTALL)
    m = pat.search(text)
    if not m:
        return []
    raw = m.group(1)
    return [int(x.strip()) for x in raw.split(',') if x.strip().isdigit()]

def extract_display_id(text):
    m = re.search(r'displayID\s*=\s*(\d+)', text)
    return int(m.group(1)) if m else None

def extract_category(text):
    m = re.search(r'category\s*=\s*"([^"]+)"', text)
    return m.group(1) if m else "CAT_NEUTRAL"

def extract_source(text):
    """Extract source from first timeline entry (NPC-level source)."""
    # source = "..." anywhere in the block
    m = re.search(r'\bsource\s*=\s*"([^"]*)"', text)
    return m.group(1) if m else ""

def extract_timeline(text, locale_suffix):
    """Returns list of {era, text} dicts for given locale (_enUS or _deDE)."""
    # Find the timeline = { ... } block
    tl_pat = re.compile(r'timeline\s*=\s*\{', re.DOTALL)
    m = tl_pat.search(text)
    if not m:
        return []
    # walk braces from that point
    start = m.end()
    depth = 1
    i = start
    while i < len(text) and depth > 0:
        if text[i] == '{':
            depth += 1
        elif text[i] == '}':
            depth -= 1
        i += 1
    tl_block = text[start:i-1]

    # Split into individual entry blocks by finding each { }
    entries = []
    j = 0
    while j < len(tl_block):
        if tl_block[j] == '{':
            depth = 1
            k = j+1
            while k < len(tl_block) and depth > 0:
                if tl_block[k] == '{':
                    depth += 1
                elif tl_block[k] == '}':
                    depth -= 1
                k += 1
            entry_text = tl_block[j+1:k-1]
            era_m = re.search(r'era\s*=\s*"([^"]+)"', entry_text)
            era = era_m.group(1) if era_m else "?"

            # Try text_enUS / text_deDE
            text_val = extract_string_field(entry_text, f"text{locale_suffix}")
            if text_val is None:
                # fallback to text_enUS if deDE missing
                text_val = extract_string_field(entry_text, "text_enUS") or ""
            entries.append({"era": era, "text": text_val})
            j = k
        else:
            j += 1
    return entries

# ── collect all categories ────────────────────────────────────────────────────
cat_slugs = {}  # cat -> [slug, ...]
npc_data  = {}  # slug -> parsed data

for slug, block in blocks:
    cat = extract_category(block)
    npc_data[slug] = {
        "cat": cat,
        "displayID": extract_display_id(block),
        "ids": extract_ids(block),
        "zones_enUS": extract_string_array(block, "zones_enUS"),
        "zones_deDE": extract_string_array(block, "zones_deDE"),
        "name_enUS": extract_string_field(block, "displayName_enUS") or slug,
        "name_deDE": extract_string_field(block, "displayName_deDE") or slug,
        "race_enUS": extract_string_field(block, "race_enUS") or "",
        "race_deDE": extract_string_field(block, "race_deDE") or "",
        "lore_enUS": extract_string_field(block, "lore_enUS") or "",
        "lore_deDE": extract_string_field(block, "lore_deDE") or "",
        "timeline_enUS": extract_timeline(block, "_enUS"),
        "timeline_deDE": extract_timeline(block, "_deDE"),
        "source": extract_source(block),
    }
    cat_slugs.setdefault(cat, []).append(slug)

# ── write static CAT files ────────────────────────────────────────────────────
for cat, slugs in cat_slugs.items():
    lines = [
        "-- ============================================================",
        f"-- IMAGO — data/npcs/{cat}.lua  (static data)",
        "-- ============================================================",
        "",
        "IMAGOdb = IMAGOdb or {}",
        "IMAGOdb.npcs = IMAGOdb.npcs or {}",
        f'IMAGOdb.npcs.{cat} = IMAGOdb.npcs.{cat} or {{}}',
        "",
    ]
    for slug in slugs:
        d = npc_data[slug]
        ids_str = ", ".join(str(x) for x in d["ids"])
        lines.append(f'IMAGOdb.npcs.{cat}["{slug}"] = {{')
        lines.append(f'    displayID = {d["displayID"]},')
        lines.append(f'    ids = {{{ids_str}}},')
        lines.append(f'    zones = {{}},')
        lines.append(f'    category = "{cat}",')
        lines.append(f'}}')
        lines.append("")
    path = os.path.join(ROOT, "data", "npcs", f"{cat}.lua")
    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
    print(f"  wrote {path}")

# ── write locale files ────────────────────────────────────────────────────────
def write_locale_npcs(locale, suffix, guard):
    lines = [
        "-- ============================================================",
        f"-- IMAGO — locales/{locale}/data/npcs.lua",
        "-- ============================================================",
        "",
    ]
    if guard:
        lines += [guard, ""]

    for cat, slugs in cat_slugs.items():
        lines.append(f"-- {cat}")
        for slug in slugs:
            d = npc_data[slug]
            name  = d[f"name_{locale}"]
            race  = d[f"race_{locale}"]
            lore  = d[f"lore_{locale}"]
            zones = d[f"zones_{locale}"]
            tl    = d[f"timeline_{locale}"]

            ref = f'IMAGOdb.npcs.{cat}["{slug}"]'
            lines.append(f'{ref}.name = {escape_lua_string(name)}')
            lines.append(f'{ref}.race = {escape_lua_string(race)}')
            lines.append(f'{ref}.lore = {escape_lua_string(lore)}')
            # zones
            z_parts = ', '.join(escape_lua_string(z) for z in zones)
            lines.append(f'{ref}.zones = {{{z_parts}}}')
            lines.append(f'{ref}.source = {escape_lua_string(d["source"])}')
            # timeline
            lines.append(f'{ref}.timeline = {{')
            for entry in tl:
                era_str = escape_lua_string(entry["era"])
                txt_str = escape_lua_string(entry["text"])
                lines.append(f'    {{era = {era_str}, text = {txt_str}}},')
            lines.append(f'}}')
            lines.append("")
        lines.append("")

    path = os.path.join(ROOT, "locales", locale, "data", "npcs.lua")
    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
    print(f"  wrote {path}")

write_locale_npcs("enUS", "_enUS", None)  # no guard - always loaded
write_locale_npcs("deDE", "_deDE", 'if GetLocale() ~= "deDE" then return end')

print("\nDone! Review the generated files before deleting data/NPCs.lua.")
