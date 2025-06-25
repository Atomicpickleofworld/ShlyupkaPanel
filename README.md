# 🛶 ShlyupkaPanel

Minimal terminal-inspired launcher for `.bat`, `.ps1`, and `.vbs` scripts — with live logs, auto-reporting, and experimental scripting zones.  
Crafted for power users, sysadmins, and tinkerers who love compact tools that do one thing extremely well.

**Version:** v3.5-Hard-Test (Experimental)  
**License:** BSD 2-Clause  
**Author:** Zop7z / Zap7z ([GitHub](https://github.com/Atomicpickleofworld))

---

## 🚀 What's New in 3.5

- **MaxEfficiency.ps1** booster (visual FX off + high performance mode)
- **RevertEfficiency.ps1** with auto-rollback and log entry
- `.bat` report generator (`MaxEfficiency_Report.bat`) shown in UI
- **`DangerScripts/` integration** — hidden scripts visible only in Risk Mode
- Red-themed Hard-Test UI mode (experimental logic zone)
- Auto-discovery of new `.bat` files placed into `commands/`

---

## ✨ Core Features

- Launch `.bat`, `.ps1`, `.vbs` via clean GUI  
- Logs all script output to `execution_log.txt`  
- Live preview with green-on-black console style  
- Embedded `.bat` editor with visual sync (since v3.2)  
- Fully portable — no install required

---

## ⚠️ Known Issues

- Settings and full script editor panel are still in progress  
- Some `.bat` scripts with `pause`, `start`, or blocking logic may hang the UI  
- Encoding issues: use `chcp 65001 >nul` at top of your `.bat` files

---

## 📁 Project Structure

`
ShlyupkaPanel/
├── ShlyupkaPanel.exe
├── commands/         → visible .bat scripts + auto-generated reports
├── DangerScripts/    → hidden scripts for Risk Mode
├── Upd/              → release notes and changelogs
├── assets/           → icons, visuals, colors
`

---

## 🧪 Compatibility

Tested on:

- ✅ Windows 10 / 11  
- ✅ Windows Server 2019+  
Expected to work on: Windows 7+, any system with `cmd.exe` and `.NET Framework`

---

## 📦 How to Use

1. Download or clone this repository  
2. Place your scripts inside `commands/`  
3. Launch `ShlyupkaPanel.exe`  
4. Click any detected script — output is shown live and saved

---

## 🗺️ Version Roadmap

| Version  | Stage        | Planned / Released Features                                         |
|----------|--------------|----------------------------------------------------------------------|
| v1.2     | Pre-Beta     | Basic logging, single-click `.bat` launcher                         |
| v3.2     | Stable        | Embedded `.bat` editor, light theme sync, UI enhancements           |
| v3.5-HT  | Experimental | MaxEfficiency, `.bat` report engine, `DangerScripts/` integration   |
| v4       | Public       | Settings UI, Risk confirmation prompt, Theme switching              |
| v5       | Release      | Custom installer, localization, plugin support                     |

---

## 📘 Version History

### ✅ v3.5-Hard-Test

- `.ps1` booster with system acceleration  
- `.bat` report auto-generation  
- Rollback on reboot via `RevertEfficiency.ps1`  
- Hidden scripts inside `DangerScripts/` only visible in Risk Mode  
- New UI theme for experimental modules

### ✅ v3.2 (Stable Pre-Beta)

- Embedded `.bat` editor with parallel window (non-blocking)  
- Light theme support with synchronized visuals  
- UI enhancements: activation flash, fixed white backgrounds  
- Fixes: resolved `Invoke()` threading bug, editor stability

---

## 👨‍💻 Credits

Created by **Zop7z** aka **Zap7z**  
(aka [Atomicpickleofworld](https://github.com/Atomicpickleofworld))  
Maintained with ☕, `.bat` magic, and Shlyupka spirit ⚓

> “In case of script disaster — blame the captain, not the vessel.” 🛶