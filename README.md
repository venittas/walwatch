# walwatch
Change wal colors based on wallpaper change

### Dependency
- [pywal](https://github.com/dylanaraps/pywal)
- colorz for pywal backend

### Setup
>[!NOTE] 
> Apply the appropriate file changes when changing file locations

1. Create `.walwatch` directory inside `$HOME`
1. Move `walwatch.sh` inside the created directory
2. Move `walwatch.service` on `~/.config/systemd/user/`
3. Enable service
```bash
systemctl --user daemon-reload #Reload systemd

systemctl --user enable pywalaccent.service #Enable service on boot

systemctl --user start pywalaccent.service #Start service
```

*Log file is created in the same directory as the shell script*
