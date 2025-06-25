# 🛶 ShlyupkaPanel

Minimal terminal-inspired launcher for `.bat`, `.ps1`, and `.vbs` scripts — with live logs, auto-reporting, and experimental scripting zones.  
Crafted for power users, sysadmins, and tinkerers who love compact tools that do one thing extremely well.

**Version:** v3.5-Hard-Test (Experimental)  
**License:** BSD 2-Clause  
**Author:** Zop7z / Zap7z ([GitHub](https://github.com/Atomicpickleofworld))

---

## 🚀 What's New in 3.5

- **MaxEfficiency.ps1** booster (disables visual effects, applies performance plan)
- **RevertEfficiency.ps1** (auto-restores settings on reboot)
- **BAT report generator** (`MaxEfficiency_Report.bat`) displayed in-panel
- **`DangerScripts/` integration** — experimental scripts appear only in "Risk Mode"
- **Experimental UI mode** (dark-red warning theme)
- **Auto-linking system:** any `.bat` added to `commands/` appears in the panel

---

## ✨ Core Features

- Run `.bat`, `.ps1`, `.vbs` files via friendly terminal-style UI  
- Logs all output to `execution_log.txt` in real time  
- Automatically detects `.bat` files inside `commands/`  
- Panel-ready `.bat` templates with support for auto-revert + logging  
- Fully portable — no installation required

---

## ⚠️ Known Issues

- Settings and script editor still in progress (planned for V4)  
- Some batch files with `pause` or `start` may hang the panel window  
- Logs may display encoding issues — recommended: `chcp 65001 >nul` at start of each `.bat`

---

`
## 📂 Project Structure
ShlyupkaPanel/
├── ShlyupkaPanel.exe
├── commands/         → visible .bat scripts + generated reports
├── DangerScripts/    → hidden experimental .ps1/.bat files
├── Upd/              → update notes + development logs
├── assets/           → icons, visuals, theme config
`

---

## 🧪 Compatibility

Tested on:

- ✅ Windows 10 / 11  
- ✅ Windows Server 2019+  
- Expected to work on Windows 7+ and most cmd-enabled systems

---

## 🗺️ Version Roadmap

| Version  | Stage      | Planned Features                                       |
|----------|------------|--------------------------------------------------------|
| v1.2     | Pre-Beta   | Basic logging, single-click `.bat` launcher            |
| v3.5-HT  | Experimental | MaxEfficiency + DangerScripts mode (Hard-Test branch) |
| v4       | Public     | Settings UI, Risk confirmation prompt, Themes          |
| v5       | Release    | Custom installer, localization, plugin support         |

---

## 📦 How to Use

1. Download or clone this repo  
2. Place scripts in `/commands/`  
3. Launch `ShlyupkaPanel.exe`  
4. Click a button → see output live, saved to `execution_log.txt`

---

## 👨‍💻 Credits

Created by **Zop7z** aka **Zap7z** ([Atomicpickleofworld](https://github.com/Atomicpickleofworld))  
_Built for terminal-era coders, batch fans, and curious modifiers_

> “In case of script disaster — blame the captain, not the vessel.” 🛶⚡