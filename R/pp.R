#' Conduct unit root test using `EViews` routines
#'
#' Use this function to conduct `PP` unit root test using `EViews` routines
#' @inheritParams uroot

#' @return An EViews workfile
#'
#' @examples library(UROOT)
#' \dontrun{
#' Data=data.frame(x=cumsum(rnorm(100)),y=cumsum(rnorm(100)))
#' pp(series=Data,test="ADF",info="sic")
#'
#'}
#' @family important functions
#' @keywords documentation
#' @export

pp <- function(series,info="sic",caption=NULL,format=kable_format(),...) {

uroot(series,test="pp",info=info,caption=caption,format=format,...)
}

