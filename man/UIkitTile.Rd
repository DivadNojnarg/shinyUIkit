% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UIkitTile.R
\name{UIkitTile}
\alias{UIkitTile}
\title{Create an UIkit tile}
\usage{
UIkitTile(..., style = NULL, padding = NULL)
}
\arguments{
\item{...}{Any element.}

\item{style}{Tile style: "muted", "primary" or "secondary". NULL by default.}

\item{padding}{Apply different spacing. NULL by default. Choose "remove",
"small" or "large".}
}
\description{
Create layout boxes with different backgrounds that can be arranged seamlessly next to each other
}
\examples{
if(interactive()){
library(shiny)

shiny::shinyApp(
 ui = UIkitPage(
   title = "My UIkit application",
   UIkitGrid(
    child_width = "1-6",
    UIkitTile("Default"),
    UIkitTile(style = "muted", "Muted"),
    UIkitTile(style = "primary", "Primary"),
    UIkitTile(style = "secondary", "Secondary"),
    UIkitTile(style = "primary", padding = "large", "Primary Large")
   )
 ),
 server = function(input, output) {}
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
