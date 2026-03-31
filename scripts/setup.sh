#!/bin/bash

echo "🔧 Actualizando sistema..."
sudo apt update

echo "📦 Instalando dependencias del sistema..."
sudo apt install -y python3-pip python3-venv libatlas-base-dev libjpeg-dev

echo "🐍 Creando entorno virtual..."
python3 -m venv ~/robot-vision/venv

echo "⚡ Activando entorno virtual..."
source ~/robot-vision/venv/bin/activate

echo "📦 Actualizando pip..."
pip install --upgrade pip

echo "📦 Instalando librerías del proyecto..."
pip install -r ~/robot-vision/requirements.txt

echo "✅ Instalación completa"
