% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ActCosinor2.R
\name{ActCosinor_long2}
\alias{ActCosinor_long2}
\title{Cosinor Model for Circadian Rhythmicity for the Whole Dataset}
\usage{
ActCosinor_long2(count.data, window = 1, daylevel = FALSE)
}
\arguments{
\item{count.data}{\code{data.frame} of dimension n * (p+2) containing the
p dimensional activity data for all n subject days.
The first two columns have to be ID and Day. ID can be
either \code{character} or \code{numeric}. Day has to be \code{numeric} indicating
the sequence of days within each subject.}

\item{window}{\code{numeric} The calculation needs the window size of the data. E.g window = 1 means each epoch is in one-minute window.}

\item{daylevel}{\code{logical}   If the cosinor model was run for day-level data. The default value is FALSE while the activity data for all days were used for model fitting. When the value is TRUE, the single day data were used for model fitting.}
}
\value{
A \code{data.frame} with the following 5 columns
\item{ID}{ID}
\item{ndays}{number of days}
\item{mes}{MESRO, which is short for midline statistics of rhythm, which is a rhythm adjusted mean. This represents mean activity level.}
\item{amp}{amplitude, a measure of half the extend of predictable variation within a cycle. This represents the highest activity one can achieve.}
\item{acro}{acrophase, a meaure of the time of the overall high values recurring in each cycle. Here it has a unit of radian. This represents time to reach the peak.}
\item{acrotime}{acrophase in the unit of the time (hours)}
\item{ndays}{Number of days modeled}
}
\description{
A parametric approach to study circadian rhythmicity assuming cosinor shape.This function is a whole dataset
wrapper for \code{ActCosinor}.
}
