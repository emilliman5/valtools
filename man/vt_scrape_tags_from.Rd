% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrape_authors.R
\name{vt_scrape_tags_from}
\alias{vt_scrape_tags_from}
\title{Retrieve roxygen tags as a data.frame from requirements, test cases, test code and functions}
\usage{
vt_scrape_tags_from(
  type,
  tags = c("editor", "editDate"),
  src = ".",
  ref = vt_path()
)
}
\arguments{
\item{type}{type of scraping to be done. one of "requirements","test_cases","test_code","functions".
to call functions. working directory must be an R package, or path identified in src must be an R package.}

\item{tags}{which tags to keep. defaults to editor and editDate}

\item{src}{path to package source. defaults to the current directory.}

\item{ref}{reference path to where validation documentation lives. defaults to vt_path()}
}
\description{
Looks for roxygen2 function documentation in /R for author details.
Assumes that author and date are tagged via custom sections \code{@section Last updated by:}
and \code{@section Last updated date:}, respectively. To exclude a roxygen
block from this scraping, omit these section names. \cr \cr
If using a dummy documentation file, looks for \code{@name} to capture
function name, otherwise uses the actual function call. \cr \cr
Exported or internal status does not affect scraping.
}
\note{
At this time, this function does not retrieve documentation captured for functions dispatched
within an R6 class. Tags at the class level documentation are retrieved.
}
\section{Last Updated by}{

Ellis Hughes
}

\section{Last updated date}{

2021-03-05
}

