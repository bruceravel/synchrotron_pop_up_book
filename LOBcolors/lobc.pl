#!/usr/bin/perl

# sudo apt-get install libimlib2-dev libimage-imlib2-perl
# cpan> install COlor::Rgb

use strict;
use warnings;

use File::Spec;
use Image::Imlib2;
use Color::Rgb;

my $lob = $ARGV[0] || 1;
my $folder = "LOB$lob";

my @specs = ([],
	     [159, 57, 70, 40, 20, 20],
	     [ 45, 88,141, 20, 30, 30],
	     [213,180,118, 20, 20, 20],
	     [ 99,106, 95, 30, 40, 40],
	     [183, 97, 70, 30, 20, 20],
	    );

opendir(my $D, $folder);
my @list = readdir $D;
close $D;

print "LOB $lob\n";
my ($sumr, $sumg, $sumb, $n) = (0,0,0,0);
foreach my $jpg (@list) {
  next if (not $jpg =~ m{jpg\z});
  print "\treading $jpg\n";
  my $img = Image::Imlib2->load(File::Spec->catfile($folder, $jpg));

  my ($h, $w) = ($img->height, $img->width);

  my ($r, $g, $b, $a);
  foreach my $ih (0 .. $h-1) {
    foreach my $iw (0 .. $w-1) {
      ($r, $g, $b, $a) = $img->query_pixel($iw,$ih);
      if ((abs($r - $specs[$lob]->[0]) < $specs[$lob]->[3]) and
	  (abs($g - $specs[$lob]->[1]) < $specs[$lob]->[4]) and
	  (abs($b - $specs[$lob]->[2]) < $specs[$lob]->[5])) {
	++$n;
	$sumr += $r;
	$sumg += $g;
	$sumb += $b;
      };
    };
  };
};

#print $n, $/;
my ($rave, $gave, $bave) = (int($sumr/$n), int($sumg/$n), int($sumb/$n));
my $hex = uc(Color::Rgb->rgb2hex($rave, $gave, $bave));
printf("%d samples: R=%d  G=%d  B=%d, hex=#%s\n",
       $n, $rave, $gave, $bave, $hex);

