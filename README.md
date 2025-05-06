# rules-for-tools: Portable Rule Scripts

This directory contains portable rule scripts (`.mdc` files) for use with Cursor and similar tools.

## Recommended: Use `get-rules` npm package

The easiest way to get these rules into your project is by using the `get-rules` npm package.

Navigate to the root directory of your project and run:

```bash
npx get-rules
```

This will:
1. Connect to the GitHub API to fetch the list of files in the `johnlindquist/rules-for-tools` repository.
2. Identify all `.mdc` (Markdown Custom) rule files in the root of that repository.
3. Create a `.cursor/rules` directory in your current working directory (if it doesn't exist).
4. Download each `.mdc` file into `.cursor/rules`.

For global installation and more details, visit the [get-rules npm page](https://www.npmjs.com/package/get-rules).

---

## Alternative: Manual Download Scripts

If you prefer not to use the npm package, you can use the scripts below.

### Quick Download (macOS/Linux/WSL/Git Bash)

This script will:
- Download all `.mdc` rule files from this repository's **root directory**
- Place them into your current project's `.cursor/rules` directory (creating it if it doesn't exist)

**Copy-paste this into your terminal:**

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

### Windows (PowerShell) Users

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

## What do the manual scripts do?
- Ensures `.cursor/rules` exists in your current directory
- Dynamically fetches all `.mdc` files from this repo's **root** using the GitHub API
- Downloads each rule file into your local `.cursor/rules` directory
- Overwrites any existing files with the same name

---

## Updating Rules

Re-run `npx get-rules` or the manual scripts at any time to get the latest rules.

---

## License
MIT 