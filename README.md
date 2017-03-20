# Flatpak manifest for Transmission

Transmission is a BitTorrent client ([website](https://transmissionbt.com/), [Git](https://github.com/transmission/transmission)). This is a [Flatpak](http://flatpak.org/) manifest for its [Gtk+](https://www.gtk.org/) version.

This manifest allows Transmission full access to:

* the network, for obvious reasons
* the host filesystem, because Transmission hasn't been adapted to use [portals](https://github.com/flatpak/flatpak/wiki/Portals) to open `.torrents` and read/write downloads
* the host D-Bus session bus, because `transmission-gtk` claims the bus name `com.transmissionbt.transmission_{dev}_{inode}`, where `dev` and `inode` are determined by calling `stat(2)` on its config directory. This is, I assume, intended to allow running multiple instances of the app, but only if they use separate configs.

## Build & Install

Dependencies:

- `org.gnome.Platform` 3.22: <http://flatpak.org/runtimes.html>
- `org.gnome.Sdk` 3.22: <http://flatpak.org/runtimes.html>

Build Transmission as a Flatpak package:
```bash
git clone https://github.com/endlessm/transmission-flatpak.git
cd transmission-flatpak
./build.sh
```

Deploy Transmission from your local repository:
```bash
flatpak remote-add --user local "file://`pwd`/repo" --no-gpg-verify
flatpak install --user local com.transmissionbt.Transmission
```

## Colophon

This manifest is derived from that published by Pierre Dureau at <https://github.com/pdureau/flatpak-manifests.git>.
