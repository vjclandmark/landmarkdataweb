#################################################################################################################################
## Author: BJ Harshfield,  Ariana Huebner ##
## Date: 11-19-2012 ##
## Program Name: ddtools.R ##
## Version: 1 ##
## Project: R codebook ##
## Description: This is a simple script to help create the data dictionary data frames for use with createcb.R
##              The first function creates an empty dataframe.
##              var label form group1 group2
##              
##		
################################################################################################################################

blankdd<-function(df){
	tempdf=as.data.frame(matrix(ncol=4,nrow=length(names(df))));
	names(tempdf)=c("var","label","form","allvars");	
	tempdf[,1]=names(df)
	tempdf[,4]=TRUE;
	tempdf[,2]="";
	tempdf[,3]="";
	tempdf

}
