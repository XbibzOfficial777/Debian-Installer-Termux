# 🚀 Termux Debian Auto-Injector V2

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Termux](https://img.shields.io/badge/Platform-Termux-green.svg)](https://termux.com)
[![Debian](https://img.shields.io/badge/Distro-Debian-red.svg)](https://www.debian.org)

> **Automatic Debian Environment Injector for Termux**  
> Boot directly into Debian every time you open Termux - Zero manual commands needed!

---

## 📋 What This Does

This script automatically configures your Termux to:
- ✅ Install Debian using `proot-distro` (if not already installed)
- ✅ Auto-login to Debian environment on every Termux launch
- ✅ Skip redundant installations on re-run
- ✅ Handle repository errors gracefully

**Perfect for:** Developers who primarily work in Debian and want instant access without typing `proot-distro login debian` every time.

---

## ⚡ Quick Installation

### Method 1: Direct Download & Execute
```bash
pkg install wget -y
wget https://github.com/XbibzOfficial777/Debian-Installer-Termux.git
chmod +x debian.sh
bash debian.sh
```

### Method 2: Git Clone
```bash
pkg install git -y
git clone https://github.com/XbibzOfficial777/Debian-Installer-Termux.git
cd termux-debian-injector
chmod +x debian.sh
bash debian.sh
```

### Method 3: Copy-Paste
1. Copy the entire script content
2. Paste into Termux
3. Press Enter
4. Close and reopen Termux

---

## 🎯 How It Works

```
┌─────────────────┐
│  Open Termux    │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ Script Checks:  │
│ - Debian exists?│
│ - Already setup?│
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ Auto-Login to   │
│ Debian (2s wait)│
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ You're now in   │
│ Debian! 🎉      │
└─────────────────┘
```

**What happens behind the scenes:**
1. Updates Termux packages (soft update - won't break on errors)
2. Installs `proot-distro` if missing
3. Downloads Debian rootfs (only first time - ~300MB)
4. Injects auto-login code into `~/.bashrc`
5. Creates backup at `~/.bashrc.backup_v2`

---

## 🛠️ Troubleshooting

### ❌ Problem: Stuck at "Preparing Debian Environment..."

**Cause:** Debian installation incomplete or corrupted.

**Solution:**
```bash
# Method 1: Reinstall Debian
proot-distro remove debian
proot-distro install debian

# Method 2: Restore original Termux behavior
mv ~/.bashrc.backup_v2 ~/.bashrc
source ~/.bashrc
```

**Visual Guide:**  
![Error Fix Step 1](https://raw.githubusercontent.com/XbibzOfficial777/Debian-Installer-Termux/refs/heads/main/docs/Screenshot_2026-02-09-20-23-22-594_com.termux-edit.jpg)  
![Error Fix Step 2](https://raw.githubusercontent.com/XbibzOfficial777/Debian-Installer-Termux/refs/heads/main/docs/Screenshot_2026-02-09-20-24-05-540_com.termux-edit.jpg)

---

### ❌ Problem: "command not found: proot-distro"

**Cause:** Installation failed due to repository errors.

**Solution:**
```bash
pkg update
pkg install proot-distro -y
proot-distro install debian
```

---

### ❌ Problem: Want to disable auto-login temporarily

**Quick Disable:**
```bash
# Edit .bashrc and comment out the injection block
nano ~/.bashrc
# Add '#' before each line in "DEBIAN AUTO-INJECTOR" section
```

**Permanent Removal:**
```bash
mv ~/.bashrc.backup_v2 ~/.bashrc
source ~/.bashrc
```

---

## 🔧 Advanced Usage

### Customize Delay Timer
Edit the script before running:
```bash
sleep 2  →  sleep 5  # Change to 5 seconds
```

### Install Specific Debian Version
```bash
# Available: debian, ubuntu, alpine, arch
proot-distro install ubuntu
# Then modify script to login to 'ubuntu' instead of 'debian'
```

---

## 📦 What Gets Installed

| Package | Size | Purpose |
|---------|------|---------|
| `proot-distro` | ~2MB | Container manager |
| `debian` (rootfs) | ~300MB | Full Debian base system |

**Total Storage:** ~302MB

---

## ⚠️ Important Notes

- **Backup Created:** Your original `.bashrc` is saved as `.bashrc.backup_v2`
- **First Run:** Debian download takes 5-10 minutes (depending on connection)
- **Re-running is safe:** Script detects existing installations
- **Exit Debian:** Type `exit` or press `Ctrl+D`

---

## 🤝 Contributing

Found a bug? Have suggestions?

1. Fork this repository
2. Create feature branch (`git checkout -b feature/improvement`)
3. Commit changes (`git commit -am 'Add feature'`)
4. Push to branch (`git push origin feature/improvement`)
5. Open Pull Request

---

## 👨‍💻 Developer

**Xbibz Official**  
- GitHub: [@Xbibz Official](https://github.com/XbibzOfficial777)
- Support: [ko-fi.com/XbibzOfficial](https://ko-fi.com/XbibzOfficial)

---

## 💖 Support This Project

If this script saved you time, consider buying me a coffee! ☕

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/XbibzOfficial)

---

## 📄 License

MIT License - Feel free to modify and distribute!

---

## 🌟 Star History

If you find this useful, leave a ⭐ on GitHub!

---

**Made with ❤️ by Bibz Coders**
