#!/bin/sh

here=`pwd`
dropbox=/home/bruce/Dropbox/Pop-up/AssemblyFigures

cd $dropbox
files=`ls *.png`
gifs=`ls *.gif`

cd $here
for f in $files; do
    echo $f
    convert -trim -bordercolor white -border 5x5 $dropbox/$f $here/$f
done

for f in $gifs; do
    echo $f
    cp $dropbox/$f $here/$f
done
