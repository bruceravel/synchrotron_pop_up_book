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

LOCATION='/home/bruce/play/popup'

rm allpages.pdf allpages_pdf.zip allpages_photoshop.zip

echo "making allpages.pdf"

pdftk \
"$LOCATION/Pdfs/Front Cover.pdf" \
"$LOCATION/Pdfs/Back Cover.pdf" \
"$LOCATION/Pdfs/Page 1.pdf" \
"$LOCATION/Pdfs/Page 2.pdf" \
"$LOCATION/Pdfs/Page 3.pdf" \
"$LOCATION/Pdfs/Page 4.pdf" \
"$LOCATION/Pdfs/Inner Wall.pdf" \
"$LOCATION/Pdfs/Inner Wall Interior.pdf" \
"$LOCATION/Pdfs/Outer Wall.pdf" \
"$LOCATION/Pdfs/Outer Wall interior.pdf" \
"$LOCATION/Pdfs/Shaping Magnet Text.pdf" \
"$LOCATION/Pdfs/Shaping Magnet Text B.pdf" \
"$LOCATION/Pdfs/Shaping Magnets.pdf" \
"$LOCATION/Pdfs/Spinner Print.pdf" \
"$LOCATION/Pdfs/Experiment ComponentsRM.pdf" \
"$LOCATION/Pdfs/Two-sided Experiment Components Front.pdf" \
"$LOCATION/Pdfs/Two-sided Experiment Components Back.pdf" \
"$LOCATION/Pdfs/Lab Book Front.pdf" \
"$LOCATION/Pdfs/Lab Book Back.pdf" \
"$LOCATION/Pdfs/Imaging pouch.pdf" \
"$LOCATION/Pdfs/MX pouch.pdf" \
"$LOCATION/Pdfs/XAFS pouch.pdf" \
"$LOCATION/Pdfs/Inserts Front.pdf" \
"$LOCATION/Pdfs/Inserts Back.pdf" \
"$LOCATION/Pdfs/Acetate.pdf" \
cat output allpages.pdf

echo "making allpages_pdf.zip"

mkdir pdf
cp \
"$LOCATION/Pdfs/Front Cover.pdf" \
"$LOCATION/Pdfs/Back Cover.pdf" \
"$LOCATION/Pdfs/Page 1.pdf" \
"$LOCATION/Pdfs/Page 2.pdf" \
"$LOCATION/Pdfs/Page 3.pdf" \
"$LOCATION/Pdfs/Page 4.pdf" \
"$LOCATION/Pdfs/Inner Wall.pdf" \
"$LOCATION/Pdfs/Inner Wall Interior.pdf" \
"$LOCATION/Pdfs/Outer Wall.pdf" \
"$LOCATION/Pdfs/Outer Wall interior.pdf" \
"$LOCATION/Pdfs/Shaping Magnet Text.pdf" \
"$LOCATION/Pdfs/Shaping Magnet Text B.pdf" \
"$LOCATION/Pdfs/Shaping Magnets.pdf" \
"$LOCATION/Pdfs/Spinner Print.pdf" \
"$LOCATION/Pdfs/Experiment ComponentsRM.pdf" \
"$LOCATION/Pdfs/Two-sided Experiment Components Front.pdf" \
"$LOCATION/Pdfs/Two-sided Experiment Components Back.pdf" \
"$LOCATION/Pdfs/Lab Book Front.pdf" \
"$LOCATION/Pdfs/Lab Book Back.pdf" \
"$LOCATION/Pdfs/Imaging pouch.pdf" \
"$LOCATION/Pdfs/MX pouch.pdf" \
"$LOCATION/Pdfs/XAFS pouch.pdf" \
"$LOCATION/Pdfs/Inserts Front.pdf" \
"$LOCATION/Pdfs/Inserts Back.pdf" \
"$LOCATION/Pdfs/Acetate.pdf" \
pdf
zip -r allpages_pdf.zip pdf/
rm -rf pdf/



echo "making allpages_photoshop.zip"

mkdir photoshop
cp \
"$LOCATION/photoshop/Front Cover.psd" \
"$LOCATION/photoshop/Back Cover.psd" \
"$LOCATION/photoshop/Page 1.psd" \
"$LOCATION/photoshop/Page 2.psd" \
"$LOCATION/photoshop/Page 3.psd" \
"$LOCATION/photoshop/Page 4.psd" \
"$LOCATION/photoshop/Inner Wall.psd" \
"$LOCATION/photoshop/Inner Wall Interior.psd" \
"$LOCATION/photoshop/Outer Wall.psd" \
"$LOCATION/photoshop/Outer Wall interior.psd" \
"$LOCATION/photoshop/Shaping Magnet Text.psd" \
"$LOCATION/photoshop/Shaping Magnet Text B.psd" \
"$LOCATION/photoshop/Shaping Magnets.psd" \
"$LOCATION/photoshop/Spinner Print.psd" \
"$LOCATION/photoshop/Experiment ComponentsRM.psd" \
"$LOCATION/photoshop/Two-sided Experiment Components Front.psd" \
"$LOCATION/photoshop/Two-sided Experiment Components Back.psd" \
"$LOCATION/photoshop/Lab Book Front.psd" \
"$LOCATION/photoshop/Lab Book Back.psd" \
"$LOCATION/photoshop/Imaging pouch.psd" \
"$LOCATION/photoshop/MX pouch.psd" \
"$LOCATION/photoshop/XAFS pouch.psd" \
"$LOCATION/photoshop/Inserts Front.psd" \
"$LOCATION/photoshop/Inserts Back.psd" \
"$LOCATION/photoshop/Acetate.psd" \
photoshop
zip -r allpages_photoshop.zip photoshop/
rm -rf photoshop/
