% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BioCircos.R
\name{BioCircosCNVTrack}
\alias{BioCircosCNVTrack}
\title{Create a track with concentric arcs to be added to a BioCircos tracklist}
\usage{
BioCircosCNVTrack(trackname, chromosomes, starts, ends, values,
  maxRadius = 0.9, minRadius = 0.5, width = 1, color = "#40B9D4",
  range = 0, ...)
}
\arguments{
\item{trackname}{The name of the new track.}

\item{chromosomes}{A vector containing the chromosomes on which each arc is found.
Values should match the chromosome names given in the genome parameter of the BioCircos function.}

\item{starts, ends}{Vectors containing the coordinates on which each arc begins or ends.}

\item{values}{A vector of numerical values associated with each bin, used to determine the 
height of each bar on the track.}

\item{minRadius, maxRadius}{Where the track should begin and end, in proportion of the inner radius of the plot.}

\item{width}{The thickness of the arc}

\item{color}{The color for the arcs, in hexadecimal RGB format.}

\item{range}{Vector of values to be mapped to the minimum and maximum radii of the track.
Default to 0, mapping the minimal and maximal values input in the values parameter.}

\item{...}{Ignored}
}
\description{
Arcs are defined by a genomic range and radially associated with a numerical value
}
\examples{
BioCircos(BioCircosCNVTrack('BarTrack', chromosomes = 1:3, starts = 1e+7*2:4, ends = 2.5e+7*2:4, 
  values = 1:3, color = "#BB0000", maxRadius = 0.85, minRadius = 0.55) 
  + BioCircosBackgroundTrack('BGTrack'))
}
