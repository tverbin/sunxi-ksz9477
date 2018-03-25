#!/bin/bash

WD=`dirname $0`

pushd $WD/linux-sunxi/

for f in `find ../armbian-sun7i-patch/ -type f | sort`; do
	echo $f
	patch -p1 < $f
done

for f in `find ../ksz-patch/ -type f`; do
	echo $f
	patch -p1 < $f
done

for f in `find ../extra-patch/ -type f`; do
	echo $f
	patch -p1 < $f
done

popd
