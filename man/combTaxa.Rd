% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combTaxa.R
\name{combTaxa}
\alias{combTaxa}
\title{combTaxa}
\usage{
combTaxa(x, ntaxa = 2, taxLev = "Family")
}
\arguments{
\item{x}{results of function aggregatoR.}

\item{ntaxa}{number of Taxa to choose.}

\item{taxLev}{taxonimc level on which the calculation has to be made.}
}
\description{
This function returns all the combinations of Taxa at the desired taxonomic resolution.
}
\examples{
data(macro_ex)
data.bio <- asBiomonitor(macro_ex)
data.agR <- aggregatoR(data.bio)
combTaxa(data.agR, taxLev = "Family")
}
\seealso{
\code{\link{aggregatoR}}
}
\keyword{aggregatoR}
