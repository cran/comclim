\name{communityclimate}
\alias{communityclimate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Community climate analysis
}
\description{
Performs a community climate analysis. The algorithm first computes the inferred climate at t1 based on sampling from the climate niches of the species in a community at t1 relative to the observed climate at t2, and determines their volume at t1 (Delta) and lag at t1 relative to t2 (Lambda). The algorithm then repeats the process for a large set of null communities, performing a richness-preserving weighted sample with replacement from the regional pool, and creates a null distribution of Delta and Lambda. Finally, community climate deviations (delta and lambda) are computed as robust standard effect sizes based on the observed and null values.

Values of delta < 0 indicate environmental filtering at t1, while values > 0 indicate environmental permissiveness at t1 and values = 0 indicate no difference between regional and local processes at t1. Values of lambda < 0 indicate weak effects of species interactions or climate tracking of species at t1 relative to climate at t2, while values > 0 indicate strong effects of species interactions or dispersal limitation of species at t1 relative to climate at t2 and values = 0 indicate no difference between regional and local processes for species at t1 relative to t2.

Actual values of Delta and Lambda indicate the absolute levels of climate space occupancy (Delta) at t1, or absolute mismatch between community composition at t1 and local climate at t2 (Lambda).

The function assumes that climate axes are on comparable (rescaled) axes, but does not test for this. You are responsible for inputting appropriate data.
}
\usage{
communityclimate(object, climateaxes = NULL, 
  numreplicates = 50, numsamplesperspecies = 10, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
A \code{\link{CommunityClimateInput-class}} object describing the local species composition at t1, the regional pool (and sampling weights, if provided) at t1, the climate niches of all species at t1, and the observed climate at t2.
}
  \item{climateaxes}{
A named vector with the climate axes to be considered, e.g. a subset of all of the axes. 
}
  \item{numreplicates}{
Number of null models to run. Larger values give more accurate p-values and effect sizes.
}
  \item{numsamplesperspecies}{
Number of random samples from the climate niche of each species for each pass of the algorithm. Larger values give more accurate results.
}
  \item{verbose}{
A logical flag. If true, prints output to track progress of the algorithm.
}
}
\value{
A \code{CommunityClimateStatistics} object.
}
\references{
For more information, see the journal article described in \code{\link{comclim-package}}.
}

\seealso{
\code{\link{climatedeviations}}, \code{\link{climatestatistics}}, \code{\link{CommunityClimateStatistics-class}}
}
\examples{
community_richness_5 <- generatedemodata()

# three dimensional analysis
result_community <- communityclimate(community_richness_5,
  climateaxes=c("ClimateAxis1","ClimateAxis2","ClimateAxis3"),
	numreplicates=25)
  
# by construction of the example, should yield inferences of
# delta < 0 (environmental filtering) and
# lambda < 0 (climate tracking)
summary(result_community)
}
