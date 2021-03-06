% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyfeed.R
\name{tidyfeed}
\alias{tidyfeed}
\title{Extract a tidy data frame from RSS, Atom and JSON feeds}
\usage{
tidyfeed(
  feed,
  config = list(),
  clean_tags = TRUE,
  list = FALSE,
  parse_dates = TRUE
)
}
\arguments{
\item{feed}{\code{character}, the url for the feed that you want to parse,
e.g. "http://journal.r-project.org/rss.atom".}

\item{config}{Arguments passed off to \code{httr::GET()}.}

\item{clean_tags}{\code{logical}, default \code{TRUE}.
Cleans columns of HTML tags.}

\item{list}{\code{logical}, default \code{FALSE}.
Return metadata and content as separate dataframes in a named list.}

\item{parse_dates}{\code{logical}, default \code{TRUE}.
If \code{TRUE}, tidyRSS will attempt to parse columns that contain
datetime values, although this may fail, see note.}
}
\description{
\code{tidyfeed()} downloads and parses rss feeds. The function
produces either a tidy data frame or a named list, easy to use for further
manipulation and analysis.
}
\note{
\code{tidyfeed()} attempts to parse columns that should contain
dates. This can fail, as can be seen
\href{https://github.com/RobertMyles/tidyRSS/issues/37}{here}. If you need
lower-level control over the parsing of dates, it's better to leave
\code{parse_dates} equal to \code{FALSE} and then parse these yourself.
}
\examples{
\dontrun{
# Atom feed:
tidyfeed("http://journal.r-project.org/rss.atom")
# rss/xml:
tidyfeed("http://fivethirtyeight.com/all/feed")
# jsonfeed:
tidyfeed("https://daringfireball.net/feeds/json")
}
}
\references{
\url{https://en.wikipedia.org/wiki/RSS}
}
\seealso{
\link[httr:GET]{GET()}
}
\author{
Robert Myles McDonnell, \email{robertmylesmcdonnell@gmail.com}
}
