# flatpak-manifests
Manifest files for missing flatpak apps.


# Transmission
BitTorrent client:
- https://transmissionbt.com/
- https://github.com/transmission/transmission

Dependencies:
- org.gnome.Platform 3.22: http://flatpak.org/runtimes.html
- org.gnome.Sdk 3.22: http://flatpak.org/runtimes.html

Build Transmission as a Flatpak package:
```bash
git clone https://github.com/pdureau/flatpak-manifests.git
cd flatpak-manifests
./build.sh com.transmissionbt.Transmission.json
```

Deploy Transmission from your local repository:
```bash
flatpak remote-add --user local "file://`pwd`/repo" --no-gpg-verify
flatpak install --user local com.transmissionbt.Transmission
```

# Colophon
From Oct 2015 to Dec 2016, this repository was a fork of alexlarsson/nightly-build-apps known as pdureau/nightly-build-apps. With the advent of flatpak builder, it became cleaner to keep it as a new repository.
