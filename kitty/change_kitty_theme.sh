#!/bin/bash

# Ruta al directorio de temas
THEMES_DIR="$HOME/.config/kitty/themes"

# Si no se proporciona un tema, muestra una lista de temas disponibles con fzf
if [ -z "$1" ]; then
  THEME=$(ls "$THEMES_DIR"/*.conf | xargs -n 1 basename | sed 's/\.conf$//' | fzf --prompt="Selecciona un tema: ")
  if [ -z "$THEME" ]; then
    echo "No se seleccionó ningún tema."
    exit 1
  fi
else
  THEME=$1
fi

# Verifica si el archivo de tema existe
THEME_FILE="$THEMES_DIR/$THEME.conf"
if [ ! -f "$THEME_FILE" ]; then
  echo "El tema '$THEME' no existe en $THEMES_DIR."
  exit 1
fi

# Cambia el esquema de colores usando el archivo especificado
kitty @ set-colors --all "$THEME_FILE"
echo "Tema '$THEME' aplicado correctamente."

