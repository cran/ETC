\name{etc.diff}
\alias{etc.diff}
\title{ Simultaneous equivalence to control for differences of means }
\description{
Performs simultaneous equivalence tests and related confidence intervals for
differences to control in a one-way layout.
}
\usage{
etc.diff(formula, data, base = 1, margin.up = NULL, margin.lo = -margin.up,
         method = "var.unequal", FWER = 0.05)
}
\arguments{
  \item{formula}{ a formula specifying a numerical response and a
                  grouping factor (e.g., response ~ treatment) }
  \item{data}{ a data frame containing the response and group variable as columns }
  \item{base}{ a single integer specifying the control group }
  \item{margin.up}{ a single numerical value or a numeric vector (of lenght equal to the
                    number of comparisons) for absolute upper margins under the null
                    hypotheses }
  \item{margin.lo}{ a single numerical value or a numeric vector (of lenght equal to the
                    number of comparisons) for absolute lower margins under the null
                    hypotheses, set to -margin.up by default if not given }
  \item{method}{ a character string:
    \itemize{
      \item "var.unequal": possibly unequal group variances,
      \item "var.equal": equal group variances,
      \item "Bofinger": equal group variances and equal sample sizes for the non-control
        groups
      \item "non.par": non-normally distributed data } }
  \item{FWER}{ a single numeric value specifying the familywise error rate to be
               controlled by the simultaneous confidence intervals }
}
\details{
Having several treatment groups and a control in a one-way layout, the object is to
simultaneously select those treatments being equivalent to the control. Bonferroni
adjusted "two one-sided t-tests" (TOST) and related simultaneous confidence intervals
are used for differences of means of normally distributed data with equal group
variances (method="var.equal"). A pooled sample variance over all treatments is taken
in this case. Welch-t-Tests are applied for unequal variances (method="var.unequal").
If the sample sizes of the treatment groups are balanced in the case of equal variances,
the single-step procedure of Bofinger and Bofinger (1995) can be chosen with p-values
and quantiles coming from a multivariate t-distribution (method="Bofinger"). A warning
is given in the output if the Bofinger method is applied for unbalanced treatment groups.
For non-normal data, tests based on wilcox.test(..., exact=FALSE, correct=TRUE, ...) are
used (method="non.par").
}
\value{
An object of class etc.diff containing:
\item{estimate}{ a (named) vector of estimated differences }
\item{test.stat}{ a (named) vector of the calculated test statistics }
\item{degr.fr}{ either a single degree of freedom (method="var.equal" and
                method="Bofinger") or a (named) vector of degrees of freedom
                (method="var.unequal") }
\item{corr.mat}{ if method="Bofinger", the correlation matrix of the multivariate
                 t-distribution }
\item{crit.value}{ either a single critical value (method="var.equal" and
                   method="Bofinger") or a (named) vector of critical values
                   (method="var.unequal") }
\item{p.value}{ a (named) vector of p-values adjusted for multiplicity }
\item{conf.int}{ a (named) matrix of simultaneous confidence intervals }
}
\note{
The confidence intervals related to the TOST method (method="var.equal",
method="var.unequal", and method="non.par") have simultaneous coverage probability
(1-2alpha), while the intervals according to Bofinger and Bofinger (1995)
(method="Bofinger") have (1-alpha). All intervals are "expanded", see Bofinger (1985).
}
\references{
Hothorn, L.A. and Hasler, M. (2008): Proof of hazard and proof of safety in
toxicological studies using simultaneous confidence intervals for differences and
ratios to control, Journal of Biopharmaceutical Statistics 18, 915-933;

Bofinger, E. and Bofinger M. (1995): Equivalence with Respect to a Control: Stepwise
Tests, Journal of the Royal Statistical Society B 57 (4), 721-733;

Bofinger, E. (1985): Expanded confidence intervals, Communications in Statistics - Theory
and Methods 14 (8), 1849-1864
}
\author{ Mario Hasler }
\seealso{ \code{\link{etc.rat}} }
\examples{
data(BW)

comp <- etc.diff(formula=Weight~Dose, data=BW, margin.up=30, method="Bofinger")
summary(comp)
}
\keyword{ htest }

