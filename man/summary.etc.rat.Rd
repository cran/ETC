\name{summary.etc.rat}
\alias{summary.etc.rat}
\title{ Summary function for etc.rat }
\description{
A detailed print out of the results of etc.rat.
}
\usage{
\method{summary}{etc.rat}(object, digits = 4, ...)
}
\arguments{
  \item{object}{ an object of class "etc.rat" as obtained by calling etc.rat }
  \item{digits}{ digits for rounding the results }
  \item{\dots}{ arguments to be passed to print }
}
\value{
A print out containing the margins, degrees of freedom, estimates, critical
values, test statistics, confidence intervals, and p.values computed by
etc.rat.
}
\author{ Mario Hasler }
\seealso{ \code{\link{summary.etc.diff}} }
\keyword{ print }
