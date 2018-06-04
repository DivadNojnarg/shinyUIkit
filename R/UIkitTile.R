#' Create an UIkit tile
#'
#' Create layout boxes with different backgrounds that can be arranged seamlessly next to each other
#' 
#' @param ... Any element.
#' @param style Tile style: "muted", "primary" or "secondary". NULL by default.
#' @param padding Apply different spacing. NULL by default. Choose "remove",
#' "small" or "large".
#'
#' @examples
#' if(interactive()){
#' library(shiny)
#' 
#' shiny::shinyApp(
#'  ui = UIkitPage(
#'    title = "My UIkit application",
#'    UIkitWidth(
#'      ratio = "1-6",
#'      UIkitTile("Default")
#'    ),
#'    UIkitWidth(
#'      ratio = "1-6",
#'      UIkitTile(style = "muted", "Muted")
#'    ),
#'    UIkitWidth(
#'      ratio = "1-6",
#'      UIkitTile(style = "primary", "Primary")
#'    ),
#'    UIkitWidth(
#'      ratio = "1-6",
#'      UIkitTile(style = "secondary", "Secondary")
#'    ),
#'    UIkitWidth(
#'      ratio = "1-6",
#'      UIkitTile(style = "primary", padding = "large", "Primary Large")
#'    )
#'  ),
#'  server = function(input, output) {}
#'  )
#' }
#' 
#' @author David Granjon, \email{dgranjon@@gmail.com}
#'
#' @export
UIkitTile <- function(..., style = NULL, padding = NULL) {
  
  tileCl <- "uk-tile"
  if (is.null(style)) {
    tileCl <- paste0(tileCl, " uk-tile-default")
  } else {
    tileCl <- paste0(tileCl, " uk-tile-", style)
  }
  
  if (!is.null(padding)) tileCl <- paste0(tileCl, " uk-padding", padding)
  
  shiny::tags$div(
    class = tileCl,
    ...
  )
  
} 