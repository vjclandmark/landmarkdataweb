\name{compilecb}
\alias{compilecb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{compile the codebook

}
\description{
This function compiles the codebook generated through createcb.R
}
\usage{
compilecb(fullfile)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fullfile}{
	path to the codebook without the ".tex"
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
BJ Harshfield
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (fullfile) 
{
    cmd = paste("perl ", system.file(package = "dwcodebook", 
        "template/compilecb.pl"), " \"", fullfile, "\"", sep = "")
    cat(cmd, "\n")
    system(cmd)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ codebook }

