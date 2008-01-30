\name{etc.rat}
\alias{etc.rat}
\title{ Simultaneous equivalence to control for ratios of means }
\description{
Performs simultaneous equivalence tests and related confidence intervals for
ratios to control in a one-way layout.
}
\usage{
etc.rat(formula, data, base = 1, margin.up = NULL, margin.lo = 1/margin.up,
        method = "var.unequal", FWER = 0.05)
}
\arguments{
  \item{formula}{ a formula specifying a numerical response and a
                  grouping factor (e.g., response ~ treatment) }
  \item{data}{ a data frame containing the response and group variable as columns }
  \item{base}{ a single integer specifying the control group }
  \item{margin.up}{ a single numerical value or a numeric vector (of lenght equal to the
                    number of comparisons) for relative upper margins under the null
                    hypotheses }
  \item{margin.lo}{ a single numerical value or a numeric vector (of lenght equal to the
                    number of comparisons) for relative lower margins under the null
                    hypotheses, set to 1/margin.up by default if not given }
  \item{method}{ a character string:
                   \item "var.unequal": possibly unequal group variances,
                   \item "var.equal": equal group variances }
  \item{FWER}{ a single numeric value specifying the familywise error rate to be
               controlled }
}
\details{
Given several treatment groups and a control, the object is to simultaneously select
those treatments being equivalent to the control. Bonferroni adjusted "two one-sided
t-tests" (TOST) and related simultaneous confidence intervals are used for ratios
of means of normally distributed data with equal group variances (method="var.equal").
A pooled sample variance over all treatments is taken in this case. Welch-t-Tests are
applied for unequal variances (method="var.unequal").
}
\value{
An object of class etc.rat containing:
\item{estimate}{ a (named) vector of estimated ratios }
\item{test.stat}{ a (named) vector of the calculated test statistics
                  (method="var.equal")}
\item{test.stat.up}{ a (named) vector of the calculated test statistics (up)
                     (method="var.unequal")}
\item{test.stat.do}{ a (named) vector of the calculated test statistics (do)
                     (method="var.unequal")}
\item{degr.fr}{ a single degree of freedom (method="var.equal") }
\item{degr.fr.up}{ a (named) vector of degrees of freedom for test statistics (up)
                   (method="var.unequal") }
\item{degr.fr.do}{ a (named) vector of degrees of freedom for test statistics (do)
                   (method="var.unequal") }
\item{degr.fr.ci}{ a (named) vector of degrees of freedom used for the confidence
                   intervals (method="var.unequal") }
\item{crit.value}{ a single critical value (method="var.equal") }
\item{crit.value.up}{ a (named) vector of critical values for test statistics (up)
                      (method="var.unequal") }
\item{crit.value.do}{ a (named) vector of critical values for test statistics (do)
                      (method="var.unequal") }
\item{crit.value.ci}{ a (named) vector of critical values for the confidence
                      intervals (method="var.unequal") }
\item{p.value}{ a (named) vector of p-values adjusted for multiplicity }
\item{conf.int}{ a (named) matrix of simultaneous confidence intervals }
}
\note{
Because related to the TOST method, the confidence intervals have simultaneous coverage
probability (1-2alpha). The intervals are "expanded", see Bofinger (1985).
}
\references{
Hothorn, L.A. and Hasler, M. (submitted): Proof of hazard and proof of safety in toxicological
studies using simultaneous confidence intervals for differences and ratios to control;
Bofinger, E. (1985): Expanded confidence intervals, Communications in Statistics - Theory and
Methods 14 (8), 1849-1864
}
\author{ Mario Hasler }
\seealso{ \code{\link{etc.diff}} }
\examples{
data(BW)

comp <- etc.rat(formula=Weight~Dose, data=BW, margin.up=1.25, method="var.equal")
summary(comp)
}
\keyword{ htest }
