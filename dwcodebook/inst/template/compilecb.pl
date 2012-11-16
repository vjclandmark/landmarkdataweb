#!/usr/bin/perl

###########################################################
#Quick script to compile codebook
#
#
############################################################

$fname=$ARGV[0];
chomp $fname;

$cmd="pdflatex -q $fname".".tex";
system($cmd);
$cmd="mkindex $fname".".tex";
system($cmd);
$cmd="makeindex $fname".".idx";
system($cmd);
$cmd="pdflatex -q $fname".".tex";
system($cmd);
$cmd="pdflatex -q $fname".".tex";
system($cmd);
