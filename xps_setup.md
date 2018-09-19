# XPS 15 Setup

## Partitioning
1. C: System (Windows)
2. D: Data (Shared)
3. System (Ubuntu)

## Drivers
- Install Dell drivers and Dell Update software
  - https://www.dell.com/support/home/ch/de/chdhs1/product-support/servicetag/1blh5q2/drivers
- Install Samsung drivers and Magician software
  - https://www.samsung.com/semiconductor/minisite/ssd/download/tools/
- Install Intel Wifi driver
  - https://www.intel.com/content/www/us/en/support/articles/000005634/network-and-i-o/wireless-networking.html
- Install latest Intel and Nvidia drivers
  - https://downloadcenter.intel.com/download/27988/Intel-Graphics-Driver-for-Windows-10
  - https://www.nvidia.com/en-us/geforce/geforce-experience/

## Software Installations(Chocolatey)
- Install chocolatey from https://chocolatey.org/install
- Install packages with chocolatey
  - choco install firefox googlechrome 1password vscode yubico-authenticator evernote vlc 7zip adobereader git.install nodejs.install treesizefree gimp yarn 
- Setup firefox sync for extensions synchronization
- Link 1Password with the schlaefli.1password.com family account (ensure correct time for 2FA)
- Install the 1Password browser addon from https://1password.com/browsers/
  
## Software Installations (Other)
- Setup ThrottleStop from https://www.techpowerup.com/download/techpowerup-throttlestop/
  - Set FIVR to CPU/Cache=-160.2, iGPU=-100.6
- Install ImDisk Toolkit from https://sourceforge.net/projects/imdisk-toolkit/
  - Setup RAMDisk for Browser Caches etc.
- Install FiraCode Retina from https://github.com/tonsky/FiraCode/releases
- Install Station from https://getstation.com/
  - Add Google Services (Inbox, Calendar)
  - Add Slack Teams (uzh-bf, ...)
  - Add brain.fm
- Install YProductive from https://www.y-productive.com/
- Install Steam from https://store.steampowered.com/about/
- Install Docker from https://store.docker.com/editions/community/docker-ce-desktop-windows
- Install Anaconda from https://www.anaconda.com/download/
- Install Cyberduck from https://cyberduck.io/
- Install MobaXTerm from https://mobaxterm.mobatek.net/
- Install Synology Drive and Backup from https://www.synology.com/en-global/support/download/DS713+#utilities
- Install Spotify from https://www.spotify.com/ch-de/download/windows/

## General Setup and Cleanup
- Cleanup start menu and app shortcuts
- Setup automatic pruning of downloads directory
