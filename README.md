# SoAI 2025 Development Environment Setup

This repository contains an automation script (`setup-dev.ps1`) to set up the required development environment for SoAI 2025 on Windows.

## 🔧 Tools Installed

- Git (v2.0+)
- Visual Studio Code (v1.99+)
- Python (v3.11+)
- uv package manager (v0.7+)
- Python packages: numpy, pandas, streamlit
- VS Code extensions: Python, Jupyter, Ruff, Cline

## 🏃 How to Run

Open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\setup-dev.ps1
