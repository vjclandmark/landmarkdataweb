\name{testcb}
\alias{testcb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test Codebook function.
}
\description{
This creates a demo codebook from the mtcars dataset in the current directory.
}
\usage{
testcb()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Used for side effect.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
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
function () 
{
    library(dwcodebook)
    data(mtcars)
    data(mtcarsdd)
    createcb("mtcars codebook", "mtcars", "mtcarsdd", fname = "mtcarscb")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ codebook }

