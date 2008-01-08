\name{summary.etc.diff}
\alias{summary.etc.diff}
\title{ Summary function for etc.diff }
\description{
A detailed print out of the results of etc.diff.
}
\usage{
\method{summary}{etc.diff}(object, digits = 4, ...)
}
\arguments{
  \item{object}{ an object of class "etc.diff" as obtained by calling etc.diff }
  \item{digits}{ digits for rounding the results }
  \item{\dots}{ arguments to be passed to print }
}
\value{
A print out containing the margins, degrees of freedom (not for method="non.par"),
correlation matrix (if method="Bofinger"), estimates, critical values
(not for method="non.par"), test statistics, confidence intervals, and p.values
computed by etc.diff.
}
\author{ Mario Hasler }
\seealso{ \code{\link{summary.etc.rat}} }
\keyword{ print }
