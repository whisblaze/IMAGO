# Contributing to IMAGO

First of all, thank you for helping us build the "Chronicle of the Unforgotten"! To keep the project stable and organized, please follow these guidelines.

## 🛠 Developer Workflow

1. **Fork the Repository:** Create your own copy of the IMAGO repo on GitHub.
2. **Work on Dev:** Always create a new branch from our `dev` branch for your changes (e.g., `feature/new-npc-data` or `fix/ui-layout`).
3. **Pull Request (PR):** Submit your PR against our `dev` branch. **Never** submit directly to `main`.
4. **Follow the Template:** Fill out the PR template completely. This ensures we know if your work was already reviewed on Discord.

## 📜 Content & Lore Guidelines

If you are a Lore Scribe or Data Miner:
- Use human-written summaries only. No raw AI output.
- Ensure all NPC and Zone IDs match the 12.0.1 (Midnight) expansion data
- Lore must be peer-reviewed by at least two other Scribes or one Archivist before code implementation.

## 💻 Code Standards

- Avoid heavy logic in `OnUpdate` handlers to maintain performance.
- Use Blizzard's modern UI paradigms for the Midnight expansion.
- Please test your code locally in-game before submitting.

If you have questions, join the discussion in our Discord!
https://discord.gg/AAusCYfK
