# flatpak-manifests
Manifest files for missing flatpak apps:
- Transmission: https://github.com/transmission/transmission

### Dependencies
- flatpak: http://flatpak.org/
- latest org.gnome.Platform and org.gnome.Sdk: http://flatpak.org/runtimes.html

### To build Transmission as a Flatpak package:
```bash
git clone https://github.com/pdureau/nightly-build-apps.git
cd nightly-build-apps
./build.sh com.transmissionbt.Transmission.json
```

### To deploy Transmission from your local repository:
```bash
flatpak remote-add --user local "file://`pwd`/repo" --no-gpg-verify
flatpak install --user local com.transmissionbt.Transmission
```

# Colophon
From Oct 2015 to Dec 2016, this repository was a fork of alexlarsson/nightly-build-apps known as pdureau/nightly-build-apps. With the advent of flatpak builder, it became cleaner to keep it as a new repository.
