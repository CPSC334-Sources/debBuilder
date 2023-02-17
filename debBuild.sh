#!/bin/sh

TEMP_DIR=temp

echo "Starting deb package build"

echo "Making temporary directory tree"
mkdir -p $TEMP_DIR
mkdir -p $TEMP_DIR/etc/
mkdir -p $TEMP_DIR/usr/bin/
mkdir -p $TEMP_DIR/DEBIAN

echo "Copy control file for DEBIAN/"
cp src/DEBIAN/control $TEMP_DIR/DEBIAN/

echo "conffiles setup for DEBIAN"
cp src/DEBIAN/conffiles $TEMP_DIR/DEBIAN/

echo "Copy binary into place"
cp src/bro $TEMP_DIR/usr/bin/

echo "Configuration file into place"
cp src/bro.conf $TEMP_DIR/etc/

echo "Building deb file"
dpkg-deb --root-owner-group --build $TEMP_DIR
mv $TEMP_DIR.deb bro.deb


echo "Complete."