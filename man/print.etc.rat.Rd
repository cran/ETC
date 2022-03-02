\name{print.etc.rat}
\alias{print.etc.rat}
\title{ Print out of the results of etc.rat }
\description{
A short print out of the results of etc.rat.
}
\usage{
\method{print}{etc.rat}(x, digits = 4, ...)
}
\arguments{
  \item{x}{ an object of class "etc.rat" as obtained by calling etc.rat }
  \item{digits}{ digits for rounding the results }
  \item{\dots}{ arguments to be passed to print }
}
\value{
A print out containing the margins, estimates, confidence intervals, and 
p.values computed by etc.rat.
}
\author{ Mario Hasler }
\seealso{ \code{\link{print.etc.diff}} }
\keyword{ print }
