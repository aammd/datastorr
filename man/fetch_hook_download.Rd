% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/driver_download.R
\name{fetch_hook_download}
\alias{fetch_hook_download}
\title{Hook for downloading files}
\usage{
fetch_hook_download(furl, fread)
}
\arguments{
\item{furl}{Function to convert \code{key, namespace} into a URL.
Takes scalar strings for key and namespace and returns a scalar
string URL.  Depending on the application you may not need the
namespace argument but your function must accept it even if it
just ignores it.}

\item{fread}{Function for converting \code{filename} into an R
object.  \code{filename} will be a scalar character and be a
filename that will exist on the system.  \code{fread} can return
anything and may throw an error if the given file was not in a
valid format.  Functions \code{read.csv}, \code{readRDS} can be
used here as-is (though for the former consider
\code{function(filename) read.csv(filename,
stringsAsFactors=FALSE)}).}
}
\description{
Storr hook for downloading files as an external resource.  This
might be useful for other, more general projects.  Just depend on
this package (which drags in curl) and use this as the
\code{fetch_hook} argument to \code{\link{storr_external}}.
}
\seealso{
\code{\link{storr_external}}
}

