# Homelab

## Partitioning

1. C: System (Windows)
2. D: Data (Shared)
3. System (Ubuntu)

## Dell XPS 15 9570 - Ubuntu 18.04

- Install Ansible from https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
- Make nemo the default file explorer
  - https://itsfoss.com/install-nemo-file-manager-ubuntu/
  - Add nemo to startup applications `/usr/bin/nemo-desktop`
- Install Fira Code Retina from https://github.com/tonsky/FiraCode
- Install Anaconda from https://www.anaconda.com/distribution/#download-section
  - Use `/opt/anaconda3` as path
  - Add to /etc/profile path to make globally accessible
- [Ansible] Initialize Git configuration
  - `git config --global user.email "rolandschlaefli@gmail.com"`
  - `git config --global user.name "Roland Schlaefli"`
- [Ansible] Install GitKraken from https://snapcraft.io/gitkraken
- Install jrnl from http://jrnl.sh/installation.html
  - `pip install --user jrnl`
- [Ansible] Install docker-compose
  - `curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m`-o /usr/local/bin/docker-compose`
  - `chmod +x /usr/local/bin/docker-compose`
- Install tldr from https://github.com/tldr-pages/tldr
- Setup Gnome extensions
  - Install night slider extension from software store
- Setup startup applications
  - Albert `albert`
  - Bitwarden `/snap/bin/bitwarden`
  - Caffeine `/usr/bin/caffeine` and Caffeine Indicator `/usr/bin/caffeine-indicator`
  - CopyQ `/usr/bin/copyq`
  - Guake Terminal `guake`
  - Nemo desktop `/usr/bin/nemo-desktop`
  - Nextcloud `/usr/bin/nextcloud`
  - Pomodoro `/bin/sh -c "sleep 30s;gnome-pomodoro --no-default-window"`
- XPS 15
  - Setup unvervolting with https://github.com/georgewhewell/undervolt
    - `undervolt --core -115.234375 --gpu -41.9921875 --cache -115.234375`
    - Setup autostart with service and timer as described in README of the linked repository

## Dell XPS 15 9570 - Windows 10

### Drivers

- Install Dell drivers and Dell Update software
  - https://www.dell.com/support/home/ch/de/chdhs1/product-support/servicetag/1blh5q2/drivers
- Install Samsung drivers and Magician software
  - https://www.samsung.com/semiconductor/minisite/ssd/download/tools/
- Install Intel Wifi driver
  - https://www.intel.com/content/www/us/en/support/articles/000005634/network-and-i-o/wireless-networking.html
- Install latest Intel and Nvidia drivers
  - https://downloadcenter.intel.com/download/27988/Intel-Graphics-Driver-for-Windows-10
    - Ensure that older version is used for compatibility (prevention of black blinking problem)
  - https://www.nvidia.com/en-us/geforce/geforce-experience/

### Software Installations(Chocolatey)

- Install chocolatey from https://chocolatey.org/install
- Install packages with chocolatey
  - choco install firefox googlechrome 1password vscode yubico-authenticator evernote vlc 7zip adobereader git.install nodejs.install treesizefree gimp yarn f.lux postman jetbrainstoolbox
- Setup firefox sync for extensions synchronization
- Adjust settings for f.lux (3400/3100/2800)
- Setup sync with VSCode

### Software Installations (Other)

- Setup Bitwarden
- Install Visual C++ 2013 Redistributable from https://www.microsoft.com/en-us/download/details.aspx?id=40784
- Install Synology Drive and Backup from https://www.synology.com/en-global/support/download/DS713+#utilities
- Setup ThrottleStop from https://www.techpowerup.com/download/techpowerup-throttlestop/
  - Set FIVR to stable values
  - Setup autostart like http://forum.notebookreview.com/threads/the-throttlestop-guide.531329/
- Install ImDisk Toolkit from https://sourceforge.net/projects/imdisk-toolkit/
  - Setup RAMDisk for Browser Caches etc.
- Install FiraCode Retina from https://github.com/tonsky/FiraCode/releases
- Install Microsoft Office Education
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
- Install Spotify from https://www.spotify.com/ch-de/download/windows/
- Install Harvest for Windows from https://www.getharvest.com/apps/windows
- Install Windows Build Tools from https://github.com/felixrieseberg/windows-build-tools

### General Setup and Cleanup

- Cleanup start menu and app shortcuts
- Setup automatic pruning of downloads directory
- Activate Windows Subsystem for Linux and install Ubuntu from the Windows Store

### Git Config

- gpg --gen-key
- git config --global user.signingkey CFD7A5F7
- git config --global user.email "rolandschlaefli@gmail.com"
- git config --global user.name "Roland Schlaefli"
- git config --global alias.cm "commit -m"
- git config --global alias.df diff
- git config --global alias.ds "diff --staged"
- git config --global alias.st status

### WSL

- Link JDK/JRD of Windows environment
  - ln -s /mnt/c/Program\ Files/Java/jdk1.8.0_201/bin/java.exe /bin/java
