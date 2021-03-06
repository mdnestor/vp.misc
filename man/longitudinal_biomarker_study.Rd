% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{longitudinal_biomarker_study}
\alias{longitudinal_biomarker_study}
\title{Example of a Longitudinal Biomarker Study}
\format{
An \code{MSnSet} with 300 features and 236 samples.
}
\source{
xxx study
}
\usage{
data("longitudinal_biomarker_study")
}
\description{
Targeted selected reaction monitoring analysis. Time points A, B, C, and D
increase in the corresponding order. A & B are prior to the disease
diagnosis for the cases. C & D are correspondingly after the diagnosis.
Time point D is after the treatment.
}
\section{pData}{

A data frame consisting of 236 rows (samples) and 12 columns:
\describe{
  \item{Sample}{The sample identifier. This is the \code{SubjID} and
  \code{TimePoint} concatenated with an underscore.}
  \item{isQC}{\code{TRUE} if the sample is a quality control sample.}
  \item{MatchID}{The unique subject identifier.}
  \item{Type}{"Control" or "Case".}
  \item{Plate}{The microplate identifier. Either "01", "02", "03", or "04".}
  \item{Well}{The microplate well location. \code{PlateRow} concatenated
  with \code{PlateCol}.}
  \item{PlateRow}{The row of the microplate where the sample is located.
  Letters A-H.}
  \item{PlateCol}{The column of the microplate where the sample is located.
  Strings "02" to "12".}
  \item{TimePoint}{Time point: A, B, C, or D.}
  \item{Days}{Number of days since disease diagnosis.}
  \item{SubjID}{Subject ID. This is the \code{MatchID} and a letter
  representing the \code{Type} ("C" for Control and "D" for Case)
  concatenated with an underscore.}
  \item{Age}{Subject age in years.}
}
}

\section{fData}{

A data frame consisting of 300 rows (features) and 4 columns:
\describe{
  \item{Organism}{The organism name: "YEAST", "BOVIN", or "HUMAN".}
  \item{Protein}{The gene symbol and organism name concatenated
  with an underscore.}
  \item{Peptide}{The peptide sequence.}
  \item{isSpike}{\code{TRUE} if \code{Organism} is "YEAST" or "BOVIN".}
}
}

\examples{
data("longitudinal_biomarker_study")
head(pData(longitudinal_biomarker_study))
head(fData(longitudinal_biomarker_study))
head(exprs(longitudinal_biomarker_study))
}
\author{
Vlad Petyuk, 2018-11-09
}
\keyword{datasets}
