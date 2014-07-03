#!/bin/sh

here=`pwd`
dropbox=/home/bruce/Dropbox/Pop-up/AssemblyFigures

cd $dropbox
files=`ls *.png`

cd $here
for f in $files; do
    echo $f
    convert -trim -bordercolor white -border 5x5 $dropbox/$f $here/$f
done
