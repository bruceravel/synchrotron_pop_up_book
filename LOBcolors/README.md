Approximating  the exterior colors of the LOBs
==============================================

We want to decorate the LOBs in the backdrop of the first spread with
the actual colors used to decorate the buildings.

I found that it was difficult to obtain RGB representations of the
colors of the LOBs from anyone in Photon Sciences.  My solution was
to take a walk around the ring and snap some photos of the LOBs with
my Kindle Fire.  It was a fairly sunny day, 20 Feb. 2014, so the
colors in the photos are reasonably true.

Examining a few points in these photos, I came up with nominal RGB
values for the five colors.  I then wrote a small perl script that
analyzed the photos pixel by pixel looking for pixels close in color
to my initial guess.  The script then averaged the values of the
similar pixels and wrote the results to the screen.  For example:

     bruce@lachesis [LOBcolors] > ./lobc.pl 2
     LOB 2
             reading IMG_20140220_125609.jpg
             reading IMG_20140220_125540.jpg
             reading IMG_20140220_125631.jpg
             reading IMG_20140220_125551.jpg
     223120 samples: R=44  G=85  B=130, hex=#2C5582

The syntax of the script is very simple.  It takes one argument, a
number from 1 to 5 which is used to select the photos from one of the
folders, one for each LOB.

The script uses a couple of things from CPAN which probably are not
already on your computer:

 * Image::Imlib2
 * Color::Rgb
 
Image::Imllib2 requires that the Imlib2 library is somehow already
installed on your computer.  On an Ubuntu machine, this works to
install Imlib2 and Image::Imlib2:

     sudo apt-get install libimlib2-dev libimage-imlib2-perl
	 
Then, Color::Rgb is easy to install.  Start the cpan tool,  then:

     cpan> install Color::Rgb


Finally, here are the results of the analysis:

     LOB | degrees | color  | R   | G   | B   | hex    |
     --- | ------- | ------ | --- | --- | --- | ------ |
     1   | 0       | red    | 163 | 50  | 61  | A3323D |
     2   | 72      | blue   | 44  | 85  | 130 | 2C5582 |
     3   | 144     | yellow | 212 | 180 | 111 | D4B46F |
     4   | 216     | green  | 93  | 106 | 97  | 5D6A61 |
     5   | 288     | orange | 183 | 99  | 63  | B7633F |

