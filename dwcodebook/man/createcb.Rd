\name{createcb}
\alias{createcb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create a Codebook
}
\description{
This function creates a simple codebook from a dataframe and a variable describing data frame using a simple template
}
\usage{
createcb(title = "My Codebook", datasetname, vardataname, rundir = getwd(), tempdir = paste(getwd(), "/cbtemp/", sep = ""), fname = "mycodebook")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{title}{
The title of the codebook
}
  \item{datasetname}{
The character name of the dataset dataframe
}
  \item{vardataname}{
The character name of the variable dataframe. This should have at least 4 columns with var,label, form, group1, etc and TRUE/FALSE for the groupings.
}
  \item{rundir}{
Where to put the codebook.
}
  \item{tempdir}{
Subdirectory to put image files.
}
  \item{fname}{
The name of the codebook file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Used for side effect
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
BJ Harshfield, Ariana Huebner
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (title = "My Codebook", datasetname, vardataname, rundir = getwd(), 
    tempdir = paste(getwd(), "/cbtemp/", sep = ""), fname = "mycodebook") 
{
    cmd = paste("perl ", system.file(package = "dwcodebook", 
        "template/updatecb.pl"), " \"", title, "\"", " \"", datasetname, 
        "\"", " \"", vardataname, "\"", " \"", rundir, "\"", 
        " \"", tempdir, "\"", " \"", fname, "\"", " \"", system.file(package = "dwcodebook", 
            "template/codebooktemplate.Rnw"), "\"", sep = "")
    cat(cmd, "\n")
    system(cmd)
    Sweave(paste(rundir, "/", fname, ".rnw", sep = ""))
    compilecb(paste(rundir, "/", fname, sep = ""))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ codebook }

