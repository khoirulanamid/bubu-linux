# 🌸 Nusa for Linux

> **The top of your screen, alive.**  
> An open-source, living interactive notch for Linux desktop inspired by [Nusa](https://rama2555.github.io/nusa/).

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Linux%20(X11)-orange.svg)]()
[![Python](https://img.shields.io/badge/Python-3-yellow.svg)]()
[![RAM](https://img.shields.io/badge/RAM-~30%20MB-green.svg)]()

Nusa turns the top edge of your Linux screen (right beneath the webcam) into an interactive notch that features a living companion mascot, music controls, focus timers, file stashing, and hydration tracking — then quietly gets out of the way.

---

## ✨ Fitur Utama (Features)

- 🐾 **Maskot Hidup (Living Companion Mascot)**:
  - Saat santai/idle, sepasang mata lucu (`●   ●`) hadir di samping jam digital.
  - Berkedip secara periodik (`—   —`).
  - Tertidur santai (`-   -` 💤) jika laptop tidak disentuh selama beberapa saat.
  - Bangun gembira (`^   ^`) begitu kursor mouse mendekat!
- 🌊 **Animasi Pegas Super Halus (Fluid Spring Physics)**:
  - Bergerak meluncur turun dan menyusut kembali dengan simulasi fisika pegas (*damped harmonic oscillator* 60 FPS).
- 🎵 **Music Controller (MPRIS D-Bus)**:
  - Terhubung otomatis dengan Spotify, YouTube di Google Chrome, Firefox, VLC, dan pemutar musik Linux lainnya.
  - Menampilkan judul lagu, artis, serta kontrol Play/Pause, Next, dan Previous.
- ⏳ **Pomodoro Focus Timer**:
  - Timer fokus 25 menit dengan tombol Mulai/Jeda/Reset dan notifikasi desktop otomatis saat selesai.
- 📁 **File Shelf (Laci File Dropzone)**:
  - Seret file apa pun ke notch untuk disimpan sementara (*shelf*).
  - Buka file langsung dengan 1 klik (`xdg-open`).
  - Tombol bersihkan laci sekali klik.
- 💧 **Water Tracker**:
  - Pelacak minum harian (+250 ml / +500 ml) dengan progress bar target harian.
- 🪶 **Sangat Ringan**:
  - Dibangun dengan **Python 3 + GTK3 + Cairo Native**.
  - Hanya memakan memori sekitar **~30 MB RAM** dan **0% CPU** saat diam.

---

## 🚀 Cara Instalasi (Quick Install)

### 1. Prasyarat
Untuk distro berbasis Debian / Ubuntu / Linux Mint:
```bash
sudo apt update
sudo apt install python3-gi gir1.2-gtk-3.0 libnotify-bin
```

### 2. Clone & Pasang
```bash
git clone https://github.com/khoirulanamid/nusa-linux.git
cd nusa-linux
chmod +x install.sh
./install.sh
```

Selesai! Nusa akan langsung aktif di layar dan otomatis berjalan setiap kali kamu menyalakan laptop (*Autostart*).

---

## 🎮 Cara Pakai

1. **Diam (Idle):**
   - Di tengah atas layar terlihat kapsul hitam minimalis menampilkan jam digital, mata maskot, dan status musik.
   - Area sekitarnya tembus klik (*click-through*), sehingga tidak mengganggu jendela aplikasi lain.
2. **Arahkan Kursor (Hover):**
   - Cukup arahkan mouse ke arah kapsul di bawah kamera, Nusa akan meluncur turun (*spring expand*) membuka kartu kontrol.
   - Pindahkan mouse menjauh, Nusa akan otomatis menyusut kembali ke atas.
3. **Seret File (Drag & Drop):**
   - Ambil file dari file manager (Nemo, Nautilus, dll.) dan seret ke tengah atas layar.
   - Nusa akan otomatis terbuka ke tab **Shelf** untuk menyimpan filemu.

---

## 🗑️ Cara Uninstall

Jika ingin menghapus instalasi Nusa:
```bash
cd nusa-linux
./uninstall.sh
```

---

## 💙 Penghargaan & Inspirasi
Desain dan konsep terinspirasi dari karya asli [Nusa by Rama](https://rama2555.github.io/nusa/).

## 📜 Lisensi
Proyek ini dilisensikan di bawah [MIT License](LICENSE).
