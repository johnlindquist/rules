# rules-for-tools: Portable Rule Scripts

This directory contains portable rule scripts (`.mdc` files) for use with Cursor and similar tools. You can easily add these rules to any project by running the script below in your project's root directory.

## Quick Download (copy-paste or curl)

This script will:
- Download all `.mdc` rule files from this repository's **root directory**
- Place them into your current project's `.cursor/rules` directory (creating it if it doesn't exist)

**Copy-paste this into your terminal:**

```bash
bash <(curl -fsSL "https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh")
```

[Click here to view the script.](https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh)

Or, if you want to inspect the script first:

```bash
curl -fsSL "https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh" -o download-rules.sh
bash download-rules.sh
```

---

## What does the script do?
- Ensures `.cursor/rules` exists in your current directory
- Dynamically fetches all `.mdc` files from this repo's **root** using the GitHub API
- Downloads each rule file into your local `.cursor/rules` directory
- Overwrites any existing files with the same name (unless already present)

---

## Updating Rules

Re-run the script at any time to get the latest rules.

---

## License
MIT 