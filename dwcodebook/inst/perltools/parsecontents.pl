#################################################################################################################################
## Author: BJ Harshfield,  Ariana Huebner ##
## Date: 11-19-2012 ##
## Program Name: parsecontents.pl ##
## Version: 1 ##
## Project: R codebook ##
## Description: This is a simple script parse sas proc contents files for use with createcb()
## Notes: Need to test this on more files             
##              
##              
##		
################################################################################################################################

#open in log
$ifile=$ARGV[0];
chomp $ifile;
#$ifile="contents.saslog";

#open output
$ofile=$ARGV[1];
chomp $ofile;
#$ofile="output.csv";

open(IN,"$ifile");
open(OUT,">$ofile");
print OUT "var,label,form\n";

$on=0;
while(<IN>){

	
	if($_=~/The SAS System/){$on=0};
	if($_=~/\w/ & ($on==1)){
		#get char vector
		@temp=split//,$_;
		
		#get the var string
		$var="";
		for($x=6;$x<=36;$x++){$var=$var.$temp[$x]}
		$var=~s/\s+$//;		
		print OUT $var;
		print OUT ",";		

		#get the label string
		$lab="";
		for($x=48;$x<=$#temp;$x++){$lab=$lab.$temp[$x]}
		$lab=~s/\s+$//;	
		print OUT "\"$lab\"";
		print OUT ",\n";		
		
	}	
	if($_=~/ #  Variable                       Type  Len  Label/){$on=1};	
	

}

close IN;
close OUT;
