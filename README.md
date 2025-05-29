# 🌱 Grow a Garden Helper V1.0

A simple AutoHotkey v2 script with GUI to automate planting in Roblox's *Grow a Garden* game.

![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v2.0-green)

---

## 📦 Features

- Clean GUI using EasyAutoGui for Ahkv2
- Persistent settings using `data.ini`
- Editable **Amount** and **Delay** options
- Simulates keypresses (`e`) in Roblox
- Automatically restarts after execution

---

## 🛠 Requirements

- [AutoHotkey v2.0+](https://www.autohotkey.com/download/)
- Roblox game window active for correct targeting

---

## 📋 How to Use

1. Download or clone this repository.
2. Open the `.ahk` script with AutoHotkey v2.
3. Set your desired **Amount** (number of times to press `e`) and **Delay** (in milliseconds).
4. Click `Run`.
5. Script activates Roblox window and starts pressing `e` with specified delay.

**Note:** `1000 ms = 1 second`

---

## 💾 Settings Persistence

Settings are saved in `data.ini` located in the same folder as the script.

- `Ammount`: Number of loops (times to press `e`)
- `Delay`: Time between each loop

---

## 📃 License

This project is open-source and available under the [MIT License](LICENSE).

---
