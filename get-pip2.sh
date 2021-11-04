#!/bin/bash

url="https://bootstrap.pypa.io/pip/2.7/get-pip.py"

# Descargar script en /temp

wget -P /temp $url

if [ $? -eq 0 ]; then
    # Ejecutar script
    echo "[*] Ejecutando script..."
    python2.7 /tmp/get-pip.py
    if [ $? -eq 0 ]; then
        echo "Script ejecutado correctamente"
        echo "Acuérdate de agregar /home/$USER/.local/bin"
    else
        echo "Error al ejecutar script"
    fi
else
    echo "Error al descargar script"
fi
