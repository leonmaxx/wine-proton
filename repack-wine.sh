#!/bin/sh

wine_zip=`find -type f -name 'wine-*.zip'`

if [ -z $wine_zip ]; then
	echo WINE zip archive not found!
	exit 0
fi

rm -f wine-proton.tar.gz
rm -rf winetmp
mkdir -p winetmp

unzip -qq $wine_zip -d winetmp

pushd winetmp

wine_dir=`find . -mindepth 1 -type d | head -1`

mv $wine_dir wine-proton
tar czf ../wine-proton.tar.gz wine-proton
rm -rf wine-proton

popd

rm $wine_zip
rmdir winetmp
