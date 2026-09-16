<p align="center">
  <img src="assets/Marhaban-studio.ico" width="96" alt="Marhaban Studio">
</p>
<h1 align="center">Marhaban Converter</h1>
<p align="center">
  <strong>Modern desktop media converter for Windows</strong>
</p>
<p align="center">
  Convert images, videos, and audio through a simple desktop interface.
</p>
<p align="center">
  <a href="https://github.com/kuliahIMC/marhaban-converter/releases">
    <img src="https://img.shields.io/github/v/release/kuliahIMC/marhaban-converter?style=for-the-badge" alt="Latest Release">
  </a>
  <a href="https://github.com/kuliahIMC/marhaban-converter/releases">
    <img src="https://img.shields.io/github/downloads/kuliahIMC/marhaban-converter/total?style=for-the-badge" alt="Downloads">
  </a>
  <img src="https://img.shields.io/badge/Windows-x64-0078D4?style=for-the-badge" alt="Windows x64">
  <img src="https://img.shields.io/badge/Python-3.14-3776AB?style=for-the-badge" alt="Python">
  <img src="https://img.shields.io/badge/PySide6-Desktop-41CD52?style=for-the-badge" alt="PySide6">
  <img src="https://img.shields.io/badge/FFmpeg-Powered-007808?style=for-the-badge" alt="FFmpeg">
  <img src="https://img.shields.io/badge/License-Proprietary-6F4BFF?style=for-the-badge" alt="Proprietary License">
</p>

---

## ✨ Overview

Marhaban Converter is a Windows desktop application for converting images, videos, and audio between supported media formats. The project is designed to provide a clean and straightforward conversion workflow while keeping the application architecture modular and easy to extend.

Marhaban Converter combines:
* **Python** for application logic
* **PySide6** for the desktop interface
* **Pillow** for image processing
* **FFmpeg** for video and audio conversion
* **FFprobe** for media inspection
* **PyInstaller** for Windows packaging
* **JSON** for local application settings and license storage

---

## 🚀 Features

### 🖼️ Image Conversion
Marhaban Converter currently supports a wide range of image formats:

| Format | Extension |
| :--- | :--- |
| JPG | `.jpg` |
| JPEG | `.jpeg` |
| PNG | `.png` |
| WEBP | `.webp` |
| HEIC / HEIF | `.heic` |
| AVIF | `.avif` |
| BMP | `.bmp` |
| TIFF | `.tiff` |
| JP2 / JPEG 2000 | `.jp2` |
| TGA | `.tga` |
| DDS | `.dds` |
| ICO | `.ico` |
| SVG | `.svg` |

### 🎬 Video Conversion
Supported video formats include:

| Format | Extension |
| :--- | :--- |
| MP4 | `.mp4` |
| MKV | `.mkv` |
| AVI | `.avi` |
| MOV | `.mov` |
| WEBM | `.webm` |
| FLV | `.flv` |
| WMV | `.wmv` |
| MPEG | `.mpeg` |
| MPG | `.mpg` |
| M4V | `.m4v` |
| 3GP | `.3gp` |
| TS | `.ts` |
| MTS | `.mts` |
| M2TS | `.m2ts` |
| OGV | `.ogv` |

### 🎵 Audio Conversion
Supported audio formats include:

| Format | Extension |
| :--- | :--- |
| MP3 | `.mp3` |
| WAV | `.wav` |
| FLAC | `.flac` |
| AAC | `.aac` |
| M4A | `.m4a` |
| OGG | `.ogg` |
| OPUS | `.opus` |
| AIFF | `.aiff` |

> Supported video containers can also be used as sources for audio extraction and conversion when supported by FFmpeg.

---

## 🔐 License System

Marhaban Converter uses a license-based activation system. A license is verified against the application's generated device identifier through the Marhaban Studio license service.

### License Workflow
```text
                  Launch Application
                           │
                           ▼
                  Load Saved License
                           │
             ┌─────────────┴─────────────┐
             │                           │
           Valid                       Invalid
             │                           │
             ▼                           ▼
     Open Application           Activation Window
                                         │
                                         ▼
                                  Enter License Key
                                         │
                                         ▼
                                  Activate License
                                         │
                                         ▼
                                   Verify Device
                                         │
                                   ┌─────┴─────┐
                                   │           │
                                Success      Failed
                                   │           │
                                   ▼           ▼
                              Save Locally   Show Error
                                   │
                                   ▼
                            Open Application
