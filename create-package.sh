#!/bin/bash
# Author: LeonMaxx

spec_file="wine-proton.spec"
work_dir="$PWD/work"
rpm_dir="$PWD/RPMs"
release=1

mkdir -p $work_dir/SOURCES
mkdir -p $rpm_dir

cp *.zip $work_dir/SOURCES/
cp *.tar.gz $work_dir/SOURCES/
cp *.patch $work_dir/SOURCES/
cp *.desktop $work_dir/SOURCES/
cp *.conf $work_dir/SOURCES/
cp *.directory $work_dir/SOURCES/
cp *.init $work_dir/SOURCES/
cp *.menu $work_dir/SOURCES/
cp *.systemd $work_dir/SOURCES/
cp wine-README* $work_dir/SOURCES/

rpmbuild -bb "$spec_file" --define "_topdir $work_dir" --define "_rpmdir $rpm_dir" --define "_release $release" --with ffmpeg

# To cross-build 32-bit packages uncomment following lines:
#export PKG_CONFIG_PATH=/usr/lib/pkgconfig
#rpmbuild -bb "$spec_file" --target i686 --define "_topdir $work_dir" --define "_rpmdir $rpm_dir" --define "_release $release"
