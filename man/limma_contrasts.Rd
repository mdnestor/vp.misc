% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/limma_contrasts.R
\name{limma_contrasts}
\alias{limma_contrasts}
\title{Wrapper for Limma}
\usage{
limma_contrasts(
  eset,
  model.str,
  coef.str,
  contrasts,
  adjust.method = "BH",
  remove_name = TRUE,
  ...
)
}
\arguments{
\item{eset}{eset (or most likely eset subclass) object}

\item{model.str}{character formulation of the model (e.g. "~ 0 + a + b").
This should be a no-intercept model (it should include 0 or -1 as
terms).}

\item{coef.str}{vector of character coefficients of interest from
\code{colnames(pData(eset))}. E.g. "a" or c("a", "b").}

\item{contrasts}{character vector of contrasts to test. All factor levels in
the contrasts should begin with the name of that factor. It is
recommended to use \code{[MSnSet.utils]{pairwise_contrasts}} to create
the contrasts.}

\item{adjust.method}{method for p-value adjustment. Default is "BH"
(Benjamini-Hochberg).}

\item{remove_name}{if \code{TRUE} (the default) the name of \code{coef.str}
will be removed from the contrasts. This simply improves readability.}

\item{...}{arguments for \code{\link[limma]{lmFit}}}
}
\value{
data.frame. Basically output of \code{\link[limma]{topTable}}
     function with additional columns \code{feature} and \code{contrast}.
}
\description{
A convenience wrapper for limma contrast testing.
}
\examples{
library(MSnSet.utils)
data(cptac_oca)

# A no-intercept model is required
model.str <- "~ 0 + SUBTYPE + AGE"
coef.str <- "SUBTYPE"

# Create contrasts
contrasts <- pairwise_contrasts(pData(oca.set), fct = coef.str)

res <- limma_contrasts(oca.set,
                       model.str = model.str,
                       coef.str = coef.str,
                       covariates = covariates,
                       contrasts = contrasts)

head(res)
}
