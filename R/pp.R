#' Conduct unit root test using `EViews` routines
#'
#' Use this function to conduct `PP` unit root test using `EViews` routines and report it in a table.
#' @inheritParams uroot

#' @return An EViews workfile
#'
#' @examples library(URooTab)
#' \dontrun{
#' set.seed(1234)
#' x=rnorm(100)
#' y=cumsum(x)
#' z=cumsum(y)
#' dataFrame=data.frame(x,y,z)
#' pp(series=dataFrame,format="html",info="hq")
#'}
#' @family important functions
#' @keywords documentation
#' @export

pp <- function(series,info="sic",caption=NULL,format=kable_format(),...) {

uroot(series,test="pp",info=info,caption=caption,format=format,...)
}

