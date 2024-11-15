#!/bin/sh

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"
  case $INFO in
    0) ICON="󰖁"
    ;;
    *) ICON="󰕾"
  esac

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi
