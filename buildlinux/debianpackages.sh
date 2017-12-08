#!/bin/bash
VERSION=2017.12.08
QTVERSION=5.7.0
OLDPATH=$PATH
./cleanup.sh
export PATH=../../qt-$QTVERSION-32bit/qtbase/bin:$OLDPATH
./builddebian32.sh $VERSION
./cleanup.sh
export PATH=../../qt-$QTVERSION-64bit/qtbase/bin:$OLDPATH
./builddebian64.sh $VERSION
./cleanup.sh
export PATH=$OLDPATH
