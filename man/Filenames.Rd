% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convertPaths.R
\name{Filenames}
\alias{Filenames}
\alias{Filenames,ANY-method}
\alias{Filenames,Raster-method}
\alias{Filenames,RasterStack-method}
\alias{Filenames,environment-method}
\alias{Filenames,list-method}
\title{Return the filename(s) from a \code{Raster*} object}
\usage{
Filenames(obj)

\S4method{Filenames}{ANY}(obj)

\S4method{Filenames}{Raster}(obj)

\S4method{Filenames}{RasterStack}(obj)

\S4method{Filenames}{environment}(obj)

\S4method{Filenames}{list}(obj)
}
\arguments{
\item{obj}{A \code{Raster*} object (i.e., \code{RasterLayer}, \code{RasterStack}, \code{RasterBrick})}
}
\description{
This is mostly just a wrapper around \code{filename} from the \pkg{raster} package, except that
instead of returning an empty string for a \code{RasterStack} object, it will return a vector of
length >1 for \code{RasterStack}.
}
\author{
Eliot McIntire
}
