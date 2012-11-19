#################################################################################################################################
## Author: BJ Harshfield,  Ariana Huebner ##
## Date: 11-16-2012 ##
## Program Name: parsesascontents ##
## Version: 1 ##
## Project: R codebook ##
## Description: This is a simple script to create a variable description data frame from a sas proc contents file.
##              It is a wrapper for a simple perl script that does the extraction.
##             
##              
##		
################################################################################################################################


#parse parameters from perl script
#$ifile=$ARGV[0];
#$ofile=$ARGV[1];


parsesascontents<-function(ifile,ofile="temp.csv",addallvars=FALSE){
	#send the command to generate the csv from the contents file
	cmd=paste("perl ",system.file(package="dwcodebook","perltools/parsecontents.pl"), " \"",ifile,"\" \"",ofile,"\"",sep="")
	#cat(cmd,"\n");	
	system(cmd)
	#load in the file
	temp=read.csv(ofile,stringsAsFactors=FALSE)
	if(addallvars){temp$allvars=TRUE}
	temp	
	
}



