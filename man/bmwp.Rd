% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bmwp.R
\name{bmwp}
\alias{bmwp}
\title{bmwp}
\usage{
bmwp(d, method = "a")
}
\arguments{
\item{d}{results of function aggregatoR}

\item{method}{the formulation of BMWP needed to calculate ASPT. Possible choises are "a" (Armitage et al. 1983), "uk" (Davy-Bowker et al. 2010), "spa" (MAGRAMA 2011), "ita" (Buffagni et al . 2014). Methods "uk_agg"and "ita_agg" implement the composite family approach.}
}
\description{
This function calculates the Biological Monitoring Working Party following Armitage et al. (1983), Davy-Bowker et al. (2007) and Alba-Tercedor & Sanchez-Ortega (1988) implementations.
}
\details{
BMWP is calculated as the sum of scores of the sensitive taxa present in a fiven sample. Armitage scores are not reliable yet, since taxonomy has to be revised (e.g. Elminthidae are present instead of Elmidae). Davy-Bowker implementation take into account composite taxa as follow:
\enumerate{
\item Psychomyiidae (inc. Ecnomidae)
\item Rhyachopilidae (inc. Glossomatidae)
\item Limnephilidae (inc. Apatanidae)
\item Ancylidae (inc. Acroloxidae)
\item Gammaridae (inc. Crangonyctidae & Niphargidae)
\item Hydrophilidae (inc. Hydraenidae, Helophoridae)
\item Tipulidae (inc. Limoniidae, Pediciidae & Cylindrotomidae)
\item Planariidae (inc. Dugesidae)
\item Hydrobiidae (inc. Bithyniidae)
\item Oligochaeta (all the families)
}
}
\examples{
data(macro_ex)
data.bio <- asBiomonitor(macro_ex)
data.agR <- aggregatoR(data.bio)
bmwp(data.agR)
bmwp(data.agR, method = "spa")
}
\references{
Armitage, P. D., Moss, D., Wright, J. F., & Furse, M. T. (1983). The performance of a new biological water quality score system based on macroinvertebrates over a wide range of unpolluted running-water sites. Water research, 17(3), 333-347.

Davy-Bowker J., Clarke R., Corbin T., Vincent H, Pretty J., Hawczak A., Blackburn J., Murphy J., Jones I., 2008. River Invertebrate Classification Tool. Final report. WFD72C. SNIFFER. 276 pp

MAGRAMA-Ministerio de Agricultura y medio Ambiente (2011) Protocolo de muestreo y laboratorio de fauna bentonica de invertebrados en rios vadeables. ML-Rv-I-2011, Cod, 23 pp.
}
\seealso{
\code{\link{aggregatoR}}
}
\keyword{aggregatoR}
