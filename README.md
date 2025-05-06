# rules-for-tools: Portable Rule Scripts

This directory contains portable rule scripts (`.mdc` files) for use with Cursor and similar tools. You can easily add these rules to any project by running the script below in your project's root directory.

## Quick Download (copy-paste or curl)

This script will:
- Download all `.mdc` rule files from this repository's **root directory**
- Place them into your current project's `.cursor/rules` directory (creating it if it doesn't exist)

**Copy-paste this into your terminal (macOS/Linux/WSL/Git Bash):**

```bash
bash <(curl -fsSL "https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh")
```

[Click here to view the bash script.](https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh)

Or, if you want to inspect the script first:

```bash
curl -fsSL "https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.sh" -o download-rules.sh
bash download-rules.sh
```

---

## Windows (PowerShell) Users

If you are using Windows without WSL or Git Bash, you can use the PowerShell script:

```powershell
irm https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.ps1 | iex
```

[Click here to view the PowerShell script.](https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.ps1)

Or, to download and run it manually:

```powershell
Invoke-WebRequest https://raw.githubusercontent.com/johnlindquist/rules-for-tools/main/download-rules.ps1 -OutFile download-rules.ps1
powershell -ExecutionPolicy Bypass -File download-rules.ps1
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