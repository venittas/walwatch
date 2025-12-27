# pywalaccent
Change wal colors based on wallpaper change

### Dependency
- [pywal](https://github.com/dylanaraps/pywal) or [pywal16](https://github.com/eylles/pywal16)

### Setup
>[!NOTE] 
> Apply the appropriate file changes when changing file locations

1. Move `pywalaccent.sh` on `~/.local/pywalaccent`
2. Move `pywalaccent.service` on `~/./config/systemd/user/`
3. Enable service
```bash
systemctl --user daemon-reload #Reload systemd

systemctl --user enable pywalaccent.service #Start pywalaccent.service on boot

systemctl --user start pywalaccent.service #Start pywalaccent.service now
```

*Simple log is created in the same directory as the shell script*
