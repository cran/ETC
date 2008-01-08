\name{ETC-package}
\alias{ETC-package}
\alias{ETC}
\docType{package}
\title{
Multiple equivalence to control
}
\description{
The package allows selecting those treatments of a one-way layout being
equivalent to a control. Bonferroni adjusted "two one-sided t-tests"
(TOST) are used for both differences or ratios of means of normally
distributed data with equal or unequal group variances, respectively.
Related simultaneous confidence intervals are given, too. For the case
of equal variances and balanced sample size for the treatment groups,
the single-step procedure of Bofinger and Bofinger (1995) can be chosen.
For non-normal data, the Wilcoxon test is applied.
On the other hand, the package provides tests and confidence intervals
for comparing two treatments when there is more than one endpoint given.
The step-up procedure of Quan et al. (2001) is both applied for
differences and extended to ratios of means of normally distributed data
with equal group variances. A related single-step procedure is also
available.
}
\details{
\tabular{ll}{
Package: \tab ETC\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2008-01-08\cr
License: \tab GPL\cr
}
\item{etc.diff}{Simultaneous equivalence tests and related confidence intervals for
  differences to control of normal means}
\item{etc.rat}{Simultaneous equivalence tests and related confidence intervals for
  ratios to control of normal means}
\item{BW}{Data set of body weights measured in a toxicological study}
}
\author{
Mario Hasler

Maintainer: Mario Hasler <hasler@biostat.uni-hannover.de>
}
\references{
Hothorn, L.A. and Hasler, M. (in process): Proof of hazard and proof of safety in
toxicological studies using simultaneous confidence intervals for differences and
ratios to control;
Bofinger, E. and Bofinger M. (1995): Equivalence with Respect to a Control:
Stepwise Tests, Journal of the Royal Statistical Society B 57 (4), 721-733;
}
\keyword{ package }
\examples{
data(BW)

comp <- etc.diff(formula=Weight~Dose, data=BW, margin.up=30, method="Bofinger")
summary(comp)
}
