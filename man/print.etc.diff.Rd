\name{print.etc.diff}
\alias{print.etc.diff}
\title{ Print out of the results of etc.diff }
\description{
A short print out of the results of etc.diff.
}
\usage{
\method{print}{etc.diff}(x, digits = 4, ...)
}
\arguments{
  \item{x}{ an object of class "etc.diff" as obtained by calling etc.diff }
  \item{digits}{ digits for rounding the results }
  \item{\dots}{ arguments to be passed to print }
}
\value{
A print out containing the margins, estimates, confidence intervals, and 
p.values computed by etc.diff.
}
\author{ Mario Hasler }
\seealso{ \code{\link{print.etc.rat}} }
\keyword{ print }
