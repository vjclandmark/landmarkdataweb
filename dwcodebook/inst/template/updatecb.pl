#!/usr/bin/perl

####################################
## Name: BJ Harshfield ##
## Date: 11-16-2012 ##
## Program Name: updatecb.pl ##
## Version: 1 ##
## Project: R codebook ##
## Description: This is a simple script to update the codebook template
##
####################################

#parse parameters
$title=$ARGV[0];
$dataset=$ARGV[1];
$datadict=$ARGV[2];
$outdir=$ARGV[3];
$tempdir=$ARGV[4];
$fname=$ARGV[5];
$swlocation=$ARGV[6];

#chomp em
chomp $dataset;
chomp $datadict;
chomp $tempdir;
chomp $outdir;
chomp $title;
chomp $fname;
chomp $swlocation;

#open template
open(IN,"$swlocation");
@in=<IN>;
$big=join("",@in);

#make subsititutions
$big=~s/REPLACETITLE/$title/g;
$big=~s/REPLACEDD/$datadict/g;
$big=~s/REPLACEDIR/$tempdir/g;
$big=~s/REPLACEDATA/$dataset/g;

#output file

open(OUT,">$outdir/$fname.rnw");
print OUT $big;
close OUT;
close IN;




