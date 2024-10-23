#!/bin/bash

# Ruta al directorio de temas
KITTY_DIR="$HOME/.config/kitty/"
KITTY_CONFIG="$KITTY_DIR/kitty.conf"
THEMES_DIR="$KITTY_DIR/themes"
THEME=
THEME_FILE=
THEME_CONTENT=

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
echo "Tema $THEME"
# Verifica si el archivo de tema existe
THEME_FILE="$THEMES_DIR/$THEME.conf"
if [ ! -f "$THEME_FILE" ]; then
  echo "El tema '$THEME' no existe en $THEMES_DIR."
  exit 1
fi

# Cambia el esquema de colores usando el archivo especificado

kitty @ set-colors --all "$THEME_FILE"

# Hacer los cambios persistentes
THEME_CONTENT=$(cat "$THEME_FILE")

echo "Theme content $THEME_CONTENT"

# Usar awk para reemplazar la sección del tema en kitty.conf
awk -v new_theme="$THEME_CONTENT" '
BEGIN { inside_section = 0 }
{
  if ($0 ~ /# Theme configuration start/) {
    print "# Theme configuration start"
    print new_theme
    inside_section = 1
  } else if ($0 ~ /# Theme configuration end/) {
    print "# Theme configuration end"
    inside_section = 0
  } else if (!inside_section) {
    print $0
  }
}
' "$KITTY_CONFIG" > "$KITTY_CONFIG.tmp" && mv "$KITTY_CONFIG.tmp" "$KITTY_CONFIG"

echo "Tema '$THEME' aplicado correctamente."

# Reload configuration kitty
kitty @ load-config
