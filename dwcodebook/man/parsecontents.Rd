\name{parsecontents}
\alias{parsecontents}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Parse a SAS contents file to create a data dictionary.
}
\description{
This creates a dictionary data frame from a SAS proc contents file for use with createcb().
The output will require at least 1 more column with a group name to be used with createcb(). 
If you do not need groups, then set addallvar=TRUE to create one group with all variables.
}
\usage{
parsecontents(ifile, ofile,addallvars=FALSE)

ifile: a SAS proc contents file
ofile: a csv name for the output
addallvars: adds a column with TRUE and a name of allvars so that the output can be used directly with createcb().

}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A 3 column data frame: variable, label, form
optionally a 4th column (allvars) with the value of TRUE.
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ codebook }

