\name{ETC-package}
\alias{ETC-package}
\alias{ETC}
\docType{package}
\title{
Equivalence to control
}
\description{
The package allows selecting those treatments of a one-way layout being
equivalent to a control. Bonferroni adjusted "two one-sided t-tests"
(TOST) and related simultaneous confidence intervals are given for both
differences or ratios of means of normally distributed data. For the
case of equal variances and balanced sample sizes for the treatment
groups, the single-step procedure of Bofinger and Bofinger (1995) can
be chosen. For non-normal data, the Wilcoxon test is applied.
}
\details{
\tabular{ll}{
Package: \tab ETC\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2009-01-30\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
\itemize{
  \item{etc.diff}{Simultaneous equivalence tests and related confidence intervals for
    differences to control}
  \item{etc.rat}{Simultaneous equivalence tests and related confidence intervals for
    ratios to control}
  \item{BW}{Data set of body weights measured in a toxicological study} }
}
\author{
Mario Hasler

Maintainer: Mario Hasler <hasler@email.uni-kiel.de>
}
\references{
Hothorn, L.A. and Hasler, M. (2008): Proof of hazard and proof of safety in
toxicological studies using simultaneous confidence intervals for differences and
ratios to control, Journal of Biopharmaceutical Statistics 18, 915-933;

Bofinger, E. and Bofinger M. (1995): Equivalence with respect to a control:
Stepwise tests, Journal of the Royal Statistical Society B 57 (4), 721-733;

Bofinger, E. (1985): Expanded confidence intervals, Communications in Statistics -
Theory and Methods 14 (8), 1849-1864
}
\keyword{ package }
\examples{
data(BW)

comp <- etc.diff(formula=Weight~Dose, data=BW, margin.up=30, method="Bofinger")
summary(comp)
}
