#################################################################################################################################
## Author: BJ Harshfield,  Ariana Huebner ##
## Date: 11-16-2012 ##
## Program Name: mkcodebook.R ##
## Version: 1 ##
## Project: R codebook ##
## Description: This is a simple script to create a codebook based on 2 data frames: a data dataframe and a variable dataframe
##              The variable dataframe should have at least 4 columns. the form column can be empty
##              var label form group1 group2
##              
##		The data dataframe should be in the same order as the data dictionary and contain the same variables
################################################################################################################################


#parse parameters from perl script
#$title=$ARGV[0];
#$dataset=$ARGV[1];
#$datadict=$ARGV[2];
#$outdir=$ARGV[3];
#$tempdir=$ARGV[4];
#$fname=$ARGV[5];

createcb<-function(title="My Codebook",datasetname,vardataname,rundir=getwd(),tempdir="cbtemp/",fname="mycodebook"){
	tempdirf=paste(rundir,"/",tempdir,sep="")
	cmd=paste("perl ",system.file(package="dwcodebook","template/updatecb.pl")," \"",title,"\""," \"",datasetname,"\"", " \"",vardataname,"\"", " \"",rundir,"\"", " \"",tempdirf,"\"", " \"",fname,"\""," \"",system.file(package="dwcodebook","template/codebooktemplate.Rnw"),"\"", sep="")
	cat(cmd,"\n")
	system(cmd)

	Sweave(paste(rundir,"/",fname,".rnw",sep=""))
	compilecb(paste(rundir,"/",fname,sep=""))

} 

compilecb<-function(fullfile){
	cmd=paste("perl ",system.file(package="dwcodebook","template/compilecb.pl"), " \"",fullfile,"\"",sep="")
	cat(cmd,"\n")
	system(cmd)

}

testcb<-function(){
	library(dwcodebook)
	data(mtcars)
	data(mtcarsdd)
	createcb("mtcars codebook","mtcars","mtcarsdd",fname="mtcarscb")
}
