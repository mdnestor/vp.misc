% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/handling_PTMs.R
\name{map_PTM_sites}
\alias{map_PTM_sites}
\title{PTM Mapping Utilities}
\usage{
map_PTM_sites(ids, fasta, prot_id_col, peptide_col, mod_char)
}
\arguments{
\item{ids}{data.frame object. Must have column containing protein IDs that
match names in the provided FASTA file. The other column is
peptide IDs containing flanking AAs in the form \code{X.X...X.X}}

\item{fasta}{AAStringSet object. Names must match protein IDs in the
corresponding column of the `ids` object}

\item{prot_id_col}{character. Name of the column with protein IDs in the
`ids` object.}

\item{peptide_col}{character. Name of the column with peptides in the `ids`
object.}

\item{mod_char}{character. Character denoting mapped PTM in peptides.
Typically "*".}
}
\description{
Mapping of PTM location from peptide to fasta file.
}
\examples{
fasta_file_name <- system.file("extdata/FASTAs",
                               "rattus_norvegics_uniprot_2018_09.fasta.gz",
                               package = "MSnSet.utils")
library(Biostrings)
# FASTA
fst <- readAAStringSet(fasta_file_name, format="fasta",
                       nrec=-1L, skip=0L, use.names=TRUE)
# extracting UniProt Accessions
names(fst) <- sub("^.*\\\\|(.*)\\\\|.*$","\\\\1",names(fst))

data(phospho_identifications_rat)

ids_with_sites <- map_PTM_sites(ids, fst, "UniProtAccFull", "Peptide", "*")

}
