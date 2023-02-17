#!/bin/sh

INSTALL_DIR=/usr/bin/
MAIN_PROGRAM_FILE=bro
CONFIGURATION_INSTALL_DIR=/etc/
MAIN_CONFIG_FILE=bro.conf

echo "Installing bro"

cp src/$MAIN_PROGRAM_FILE $INSTALL_DIR/
cp src/$MAIN_CONFIG_FILE $CONFIGURATION_INSTALL_DIR/

echo "Bro installed"
