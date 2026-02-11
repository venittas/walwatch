#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"

LOG_FILE="$HOME/.walwatch/walwatch.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

update_colors() {
    wallpaper=$(dms ipc wallpaper get)
    
    if [ -f "$wallpaper" ]; then
        log "Wallpaper changed to: $wallpaper"
        
        if wal_output=$(wal --backend colorz -i "$wallpaper" -q 2>&1); then
            log "Colors updated successfully"
        else
            log "ERROR: wal failed"
            log "wal output: $wal_output"
        fi
    else
        log "ERROR: Wallpaper file not found: $wallpaper"
    fi
}

log "Starting walwatch"
update_colors

prev=""
while true; do
    current=$(dms ipc wallpaper get)
    if [ "$current" != "$prev" ]; then
        prev="$current"
        update_colors
    fi
    sleep 6000
done