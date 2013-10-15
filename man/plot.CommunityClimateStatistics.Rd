\name{plot.CommunityClimateStatistics}
\alias{plot.CommunityClimateStatistics}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Draws community climate diagram.
}
\description{
Produces either a deviations plot or a community climate diagram. The deviations plot compares null distributions (black) and observed values (red) for volume, lag, and lag along each axis, along with the interquartile range of null values. The community climate diagram shows the location of the community (red points) and null communities (black points) in climate space at t1, and compares it to the observed climate at t2 (open black point). The climate volume for each is shown as a circle, and the climate lag is shown as a vector connecting the inferred climate at t1 to the observed climate at t2.
}
\usage{
\method{plot}{CommunityClimateStatistics}(x, deviations = FALSE, axisnames = NULL, 
  nnull = 10, cex.axis = 0.7, cex.nullpoints = 0.3, 
  cex.obspoints = 0.5, cex.names = 1.5, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A CommunityClimateStatistics object to be plotted
}
  \item{deviations}{
If TRUE, produces a deviations plot; if FALSE, produces a community climate diagram. All subsequent options are applicable only when deviations=FALSE.
}
  \item{axisnames}{
Labels to be drawn for each climate axis.
}
  \item{nnull}{
Number of null simulations to be drawn on the diagram; lower values may produce clearer plots.
}
  \item{cex.axis}{
Expansion factor for the axis ticks.
}
  \item{cex.nullpoints}{
Expansion factor for the null points.
}
  \item{cex.obspoints}{
Expansion factor for the observed points.
}
  \item{cex.names}{
Expansion factor for the climate axis labels.
}
\item{...}{Other arguments to be passed to plot commands}
}

\value{
None; used for the side-effect of producing a plot.
}
\examples{
community_richness_5 <- generatedemodata()
result_community <- communityclimate(community_richness_5,
  climateaxes=c("ClimateAxis1","ClimateAxis2","ClimateAxis3"),
	numreplicates=100)

# deviations plot
plot(result_community,deviations=TRUE)

# community climate diagram
plot(result_community,deviations=FALSE)
}
