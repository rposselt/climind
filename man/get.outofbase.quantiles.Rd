% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/climdex.r
\name{get.outofbase.quantiles}
\alias{get.outofbase.quantiles}
\title{Method for getting threshold quantiles for use in computing indices}
\usage{
get.outofbase.quantiles(tmax = NULL, tmin = NULL, prec = NULL,
  tmax.dates = NULL, tmin.dates = NULL, prec.dates = NULL,
  base.range = c(1961, 1990), n = 5, temp.qtiles = c(0.1, 0.9),
  prec.qtiles = c(0.75, 0.95, 0.99), min.base.data.fraction.present = 0.1)
}
\arguments{
\item{tmax}{Daily maximum temperature data.}

\item{tmin}{Daily minimum temperature data.}

\item{prec}{Daily total precipitation data.}

\item{tmax.dates}{Dates for the daily maximum temperature data.}

\item{tmin.dates}{Dates for the daily minimum temperature data.}

\item{prec.dates}{Dates for the daily total precipitation data.}

\item{base.range}{Years to use for the baseline.}

\item{n}{Number of days to use as window for daily quantiles.}

\item{temp.qtiles}{Quantiles to calculate for temperature variables}

\item{prec.qtiles}{Quantiles to calculate for precipitation}

\item{min.base.data.fraction.present}{Minimum fraction of base data that must
be present for quantile to be calculated for a particular day}

\item{quantiles}{Threshold quantiles for supplied variables.}
}
\value{
A set of threshold quantiles
}
\description{
This function creates threshold quantiles for use with climdexInput.raw
or climdexInput.csv.
}
\details{
This function takes input climate data at daily resolution, and produces as
output a set of threshold quantiles. This data structure can then be passed
to climdexInput.raw or climdexInput.csv.

For more details on arguments, see \code{link{climdexInput.raw}}.
}
\note{
Units are assumed to be mm/day for precipitation and degrees Celsius
for temperature. No units conversion is performed internally.
}
\examples{
library(PCICt)

## Create a climdexInput object from some data already loaded in and
## ready to go.

## Parse the dates into PCICt.
tmax.dates <- as.PCICt(do.call(paste, ec.1018935.tmax[,c("year",
"jday")]), format="\%Y \%j", cal="gregorian")
tmin.dates <- as.PCICt(do.call(paste, ec.1018935.tmin[,c("year",
"jday")]), format="\%Y \%j", cal="gregorian")
prec.dates <- as.PCICt(do.call(paste, ec.1018935.prec[,c("year",
"jday")]), format="\%Y \%j", cal="gregorian")

## Load the data in.
quantiles <- get.outofbase.quantiles(ec.1018935.tmax$MAX_TEMP,
ec.1018935.tmin$MIN_TEMP, ec.1018935.prec$ONE_DAY_PRECIPITATION,
tmax.dates, tmin.dates, prec.dates, base.range=c(1971, 2000))

}
\references{
\url{http://etccdi.pacificclimate.org/list_27_indices.shtml}
}
\seealso{
\code{\link{climdex.pcic-package}}, \code{\link{climdexInput.raw}}.
}
\keyword{climate}
\keyword{ts}
