#!/bin/sh
##
## This simple shell script merged the individual PDF files into two
## one-click formats.  The all-in-one PDF file has the pages in the
## order given in pages.md.  The zip file contains each individual
## page.
##
## need to add "Front Cover.pdf" and "Shaping Magnet Text.pdf" when
## they are ready
##

LOCATION='/home/bruce/Dropbox/Pop-up/Proofs'

rm allpages.pdf allpages.zip

echo "making allpages.pdf"

pdftk \
"$LOCATION/Back Cover.pdf" \
"$LOCATION/Page 1.pdf" \
"$LOCATION/Page 2.pdf" \
"$LOCATION/Page 3.pdf" \
"$LOCATION/Page 4.pdf" \
"$LOCATION/Inner Wall.pdf" \
"$LOCATION/Inner Wall Interior.pdf" \
"$LOCATION/Outer Wall.pdf" \
"$LOCATION/Outer wall interior.pdf" \
"$LOCATION/Shaping Magnet Text B.pdf" \
"$LOCATION/Shaping Magnets.pdf" \
"$LOCATION/Spinner Print.pdf" \
"$LOCATION/Experiment ComponentsRM.pdf" \
"$LOCATION/Two-sided Experiment Components Front.pdf" \
"$LOCATION/Two-sided Experiment Components Back.pdf" \
"$LOCATION/Lab Book Front.pdf" \
"$LOCATION/Lab Book Back.pdf" \
"$LOCATION/Imaging pouch.pdf" \
"$LOCATION/MX pouch.pdf" \
"$LOCATION/XAFS pouch.pdf" \
"$LOCATION/Inserts Front.pdf" \
"$LOCATION/Inserts Back.pdf" \
"$LOCATION/Acetate.pdf" \
cat output allpages.pdf

echo "making allpages.zip"

mkdir pdf
cp \
"$LOCATION/Back Cover.pdf" \
"$LOCATION/Page 1.pdf" \
"$LOCATION/Page 2.pdf" \
"$LOCATION/Page 3.pdf" \
"$LOCATION/Page 4.pdf" \
"$LOCATION/Inner Wall.pdf" \
"$LOCATION/Inner Wall Interior.pdf" \
"$LOCATION/Outer Wall.pdf" \
"$LOCATION/Outer wall interior.pdf" \
"$LOCATION/Shaping Magnet Text B.pdf" \
"$LOCATION/Shaping Magnets.pdf" \
"$LOCATION/Spinner Print.pdf" \
"$LOCATION/Experiment ComponentsRM.pdf" \
"$LOCATION/Two-sided Experiment Components Front.pdf" \
"$LOCATION/Two-sided Experiment Components Back.pdf" \
"$LOCATION/Lab Book Front.pdf" \
"$LOCATION/Lab Book Back.pdf" \
"$LOCATION/Imaging pouch.pdf" \
"$LOCATION/MX pouch.pdf" \
"$LOCATION/XAFS pouch.pdf" \
"$LOCATION/Inserts Front.pdf" \
"$LOCATION/Inserts Back.pdf" \
"$LOCATION/Acetate.pdf" \
pdf
zip -r allpages.zip pdf/
rm -rf pdf/
