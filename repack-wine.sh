#!/bin/sh

wine_zip=`ls wine-*.zip`

if [ -z $wine_zip ]; then
	echo WINE zip archive not found!
	exit 0
fi

rm -f wine-proton.tar.gz
rm -rf winetmp
mkdir -p winetmp

unzip -qq $wine_zip -d winetmp

pushd winetmp

wine_dir=`ls`

mv $wine_dir wine-proton
tar czf ../wine-proton.tar.gz wine-proton
rm -rf wine-proton

popd

rmdir winetmp
