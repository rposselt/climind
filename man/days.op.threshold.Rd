% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indices.R
\name{days.op.threshold}
\alias{days.op.threshold}
\title{Lengths of strings of TRUE (1 & 0) values
Computes which days are above or below the baseline threshold.}
\usage{
days.op.threshold(temp, dates, jdays, date.factor, threshold.outside.base,
  base.thresholds, base.range, op = "<")
}
\arguments{
\item{temp}{Sequence of temperature values.}

\item{dates}{Sequence of associated dates.}

\item{jdays}{Sequence of associated days of year.}

\item{date.factor}{Factor to aggregate data using.}

\item{threshold.outside.base}{Sequence of thresholds to be used for data outside the base period.}

\item{base.thresholds}{Data structure containing sets of thresholds to be used inside the base period; see \link{climdexInput-class}.}

\item{base.range}{Date range (type PCICt) of the baseline period.}

\item{op}{Comparison operator to use.}

\item{max.missing.days}{Maximum number of NA values per time period.}
}
\value{
A vector consisting of the mean fraction of days above or below the supplied set of thresholds.
}
\description{
This function computes which days are above or below baseline thresholds.
It is used to implement the compound indices.
It is based on the "percent.days.op.threshold"
}
\note{
If date.factor is omitted, daily series will be returned.
}
\seealso{
\link{climdexInput-class}.
}
\keyword{climate}
\keyword{ts}
