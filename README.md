# Wine-Proton
RPM packaging scripts for standalone WINE with ESYNC from ValveSoftware/Proton repository.
  
Patches added to support **gallium-nine**, **CEF** (Chromium Embedded Framework) and some additional fonts from wine-staging.
  
## Build
To build packages:
```shell
$ sudo yum-builddep wine-proton.spec
$ ./create-package.sh
```
  
To build 32-bit packages for RHEL/CentOS 7 you need to use [CentOS 7 Altarch i386](http://mirror.centos.org/altarch/7/isos/i386/) installation and build yourself `openal` and `SDL2` packages.

## Packages
Repository with built packages available at [Fedora COPR](https://copr.fedorainfracloud.org/coprs/leonmaxx/wine-proton/).  
Install:
```shell
dnf install wine-proton wine-proton-dxvk-native wine-proton-dxvk-native.i686
```

# Updates
## Version 3.16-7
- Updated Wine-Proton sources to version 3.16-7.
## Version 3.16-6
- Updated Wine-Proton sources to version 3.16-6.
- Reverted patch that disables `winemenubuilder`.
## Version 3.16-4
- Updated Wine-Proton sources to version 3.16-4.
- Added support for **DXVK** native libraries with DLL redirect.
- Enabled support for **VkD3D** for Direct3D 12.
- Wine XAudio2 implementation replaced with **[FAudio](https://github.com/FNA-XNA/FAudio)** based implementation by Ethan Lee and Andrew Eikum ([repository](https://github.com/aeikum/wine/tree/faudio-fixups)).

After wine packages is updated please update your old wine prefix (not needed for new prefixes):
```
WINEPREFIX=path_to_prefix wine-update-prefix
```
  
To enable/disable **gallium-nine** or **DXVK** run `winecfg` and switch to `Staging` tab.
