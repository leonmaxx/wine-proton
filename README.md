# Wine-Proton
RPM packaging scripts for standalone WINE with ESYNC from ValveSoftware/Proton repository.
  
Patches added to support **gallium-nine**, **CEF** (Chromium Embedded Framework) and some additional fonts from wine-staging.
  
## Build
To build packages:
```shell
$ sudo yum-builddep wine-proton.spec
$ ./create-package.sh
```
  
To build 32-bit packages for RHEL/CentOS 7 you need to use [CentOs 7 Altarch i386](http://mirror.centos.org/altarch/7/isos/i386/) installation and build yourself `openal` and `SDL` packages.
