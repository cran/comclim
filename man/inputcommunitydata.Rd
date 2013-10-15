\name{inputcommunitydata}
\alias{inputcommunitydata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Input data for community climate analysis
}
\description{
A helper function to streamline data formatting
}
\usage{
inputcommunitydata(localcommunity, regionalpool, 
  regionalpoolweights = numeric(), climateniches, observedclimate)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{localcommunity}{
The names of species in the local community at t1.
}
  \item{regionalpool}{
The names of species in the the regional pool for the local community at t1.
}
  \item{regionalpoolweights}{
A numeric vector with same length as \code{regional_pool_t1}, corresponding to sampling weights at t1. Does not need to sum to one; will be normalized. If left empty, will be auto-filled with all 1s (i.e. uniform sampling).
}
  \item{climateniches}{
A dataframe with climate niche information for all species in the local community and regional pool at t1. Should have a \code{taxon} column, and then any number of other columns corresponding to climate axes. Each row represents an observation of the species with a given taxon name. Usually you will fill this dataframe by mapping geographic occurrences of species into climate space.
}
  \item{observedclimate}{
A named numeric vector with names corresponding to the same climate axes as in \code{climate_niches_t1}. Represents the observed climate at t2.
}
}

\value{
A \code{\link{CommunityClimateInput-class}} object.
}
