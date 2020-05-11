![alt text](logo.png "RetroRoller")

# RetroRoller

Based on ArchLinux, RetroRoller's primary focus is on performance to deliver the
best gaming experience. It is an open platform that anyone can and is encouraged
to contribute to.

## Installation

1. Download
[archlinux-retroroller-20200510.img.gz](http://localhost)
2. Burn to sdcard
3. On partition 1 (fat32) edit `wpa_supplicant.conf` and fill
   in `ssid` and `psk` fields. You can add multiple network blocks.
4. Boot in OGA and wait for Emulation Station.


## Inputs

### Global

| Key                   | Action            |
| --------------------- |-------------------|
| Power                 | Sleep/Wake        |
| F3 + Power            | Power-off         |
| F3 + Left/Right       | Volume            |
| F3 + Up/Down          | Screen Brightness |
| F3 + L1               | Performance normal|
| F3 + R1               | Performance max   |

### RetroArch

| Key                   | Action                |
| --------------------- |-----------------------|
| F1                    | Hotkey                |
| F1 + left/right       | Volume                |
| F1 + A                | Fast forward toggle   |
| F1 + Y                | Show FPS              |
| F1 + B                | Pause                 |
| F1 + L1               | Load state            |
| F1 + R1               | Save state            |
| F1 + F6               | Exit RetroArch from game |

## General Setup

- Download additional cores in RetroArch online updater
- Edit `~/.emulationstation/es_systems.cfg` to configure more ES systems
- Rolling distribution (hopefully will never have to re-image)
- 64-bit OS but RetroArch32 was ported to work solely to have fast PSX
- Check retroarch config settings if you want to know where everything goes
- Default user/pass: odroid/odroid; root/odroid
- Includes SDL2 w/ rotation rebased to recent SDL2 version

### Custom kernel

- Sleep support
- Some additional wifi drivers included
- BTRFS support including compression
- NTFS support
- Various performance optimizations

## Upgrade Packages

    sudo pacman -Syu

Be sure to check out any .pacnew files created and merge them.

## Packages

### Retro Launcher

Lightweight launcher instead of ES. ES uses 5-8% CPU and a lot of RAM. Retro
Launcher uses 4-8MB RAM and ~0% CPU. ES can also be launched from RL.
Conversely, RL can also be launched from ES.

It also has a live updater to update packages.

To start on boot:

    sudo systemctl disable emulationstation
    sudo systemctl enable retrolauncher

### Emulation Station

To start on boot:

    sudo systemctl enable emulationstation
    sudo systemctl disable retrolauncher

### PPSSPP

 PPSSPP doesn't have a native browser so unfortunately the only way to launch
  new titles is via ES. Once a rom is launched it will remain in the menu so you
can launch ppsspp directly.


### oga-events

Global hot key service

### battery-check

Will flash the blue LED when the battery reaches 10% capacity.

### rr-launcher

Extremely lightweight launcher that uses pretty much no RAM and 0 CPU. It's a
simple round-robin script that alternates between apps. Good for those that just
care about booting right into RetroArch and a few other apps.

### What's been upstreamed

So far we've managed to upstream the mali and rga userspace drivers into the
official ArchLinux ARM repos. The ArchLinux ARM maintainer is open to merge 
my kernel package after he's acquired an OGA himself for testing.

### Futher links

- [Building packages](building.md)
- [Making a chroot](chroot.md)

## Credits

- NOirBRight and npaladin2000 for testing and feedback
- M00D\_Sanchez for the artwork
- Safarikniv for testing and hosting the RetroArch cores
- CrashOverride for all the dev work he's done on the platform
- Lakka and EmuELEC team for all the collaboration
- All the fans in #odroidgo-advance including BadBrent

[//]: # vim: set textwidth=80:
