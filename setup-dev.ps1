# setup-dev.ps1 - Automation Script for SoAI 2025 Dev Setup

Write-Host "Starting SoAI 2025 development environment setup..." -ForegroundColor Cyan

# 1. Install Git (using winget)
Write-Host "Installing Git..." -ForegroundColor Yellow
winget install --id Git.Git -e --source winget

# 2. Install Visual Studio Code
Write-Host "Installing Visual Studio Code..." -ForegroundColor Yellow
winget install --id Microsoft.VisualStudioCode -e --source winget

# 3. Install Python 3.11+
Write-Host "Installing Python 3.11..." -ForegroundColor Yellow
winget install --id Python.Python.3.11 -e --source winget

# 4. Install UV (via script from GitHub)
Write-Host "Installing uv (package manager)..." -ForegroundColor Yellow
Invoke-WebRequest https://astral.sh/uv/install.ps1 -UseBasicParsing | Invoke-Expression

# 5. Add UV to PATH temporarily
$env:Path += ";$env:USERPROFILE\.cargo\bin"

# 6. Install Python packages using uv
Write-Host "Installing Python packages with uv..." -ForegroundColor Yellow
uv pip install numpy pandas streamlit

# 7. Install VS Code Extensions
Write-Host "Installing VS Code Extensions..." -ForegroundColor Yellow
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension charliermarsh.ruff
code --install-extension usernamehw.indent-one-space # For Cline, replace if needed

Write-Host "✅ Setup complete!" -ForegroundColor Green
