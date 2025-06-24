# ShlyupkaPanel
Minimal ".bat" runner for Windows, with live logs and black&amp;green aesthetic
# 🛶 Shlyupka Panel

Minimal terminal-inspired UI for running .bat scripts with live logs and clean control. Designed for power users, sysadmins, and curious tinkerers who love compact tools that do one thing well.

Version: V1.2 Pre-Beta  
License: BSD 2-Clause  
Author: Zop7z  

---

## 🚀 Features

- Run preloaded .bat scripts with a single click
- Real-time log output in green-on-black style
- Automatically logs all output to execution_log.txt
- Simple folder structure — just unpack and run
- Portable — no installation required

---

## ⚠️ Known Issues

- The "Add custom .bat" feature is not implemented yet  
- The Settings button is currently inactive (planned for V4)  
- Logs may display garbled symbols unless chcp 65001 is added  
- Some batch scripts may hang if they include pause, choice, or start

> Tip: Always begin your .bat files with chcp 65001 >nul for proper encoding support.

---

## 🧪 Compatibility

Confirmed working on:

- ✅ Windows 10 Pro (activated)  
- ✅ Windows 11 Home / Pro (partial testing)

Expected to work on:

- Windows 7 SP1 and newer  
- Windows Server 2016+  
- Any version with cmd.exe and powercfg available

---

## 📜 License (BSD 2-Clause)

This software is released under the BSD 2-Clause License.  
You may use, modify, and redistribute it freely — but you must retain the original copyright.

> “As-is” — the author is not liable for any damage, data loss, or electroshock therapy triggered by poor scripting decisions 🤖⚡

---

## 🗺️ Version Roadmap

| Version | Stage      | Goal/Planned Features                                 |
|---------|------------|--------------------------------------------------------|
| V1.2    | Pre-Beta   | Public alpha testing, base logging, .bat runner       |
| V3      | Beta       | Embedded script editor, drag-and-drop support         |
| V4      | Public     | Settings panel, themes, .bat autoscan                 |
| V5      | Release 1  | Custom installer, localization, plugin support        |

---

## 📦 How to Use

1. Clone or download the folder  
2. Place your .bat files in AppFiles/commands/  
3. Launch ShlyupkaPanel.exe  
4. Click any button — logs appear live, saved to execution_log.txt  

> Want a custom icon? Create a shortcut to the app and assign any .ico file you like!

---

## 👨‍💻 Credits

Developed by Zop7z  
Shlyupka is a utility project — fast, portable, and built for daily system tweaking

---
