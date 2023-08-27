#' Conduct `ADF` unit root test using `EViews` routines
#'
#' Use this function to conduct unit root test using `EViews` routines
#' @inheritParams uroot

#' @return An EViews workfile
#'
#' @examples library(URooTab)
#' \dontrun{
#' Data=data.frame(x=cumsum(rnorm(100)),y=cumsum(rnorm(100)))
#' adf(series=Data,test="ADF",info="sic")
#'
#'}
#' @family important functions
#' @keywords documentation
#' @export

adf <- function(series,info="sic",caption=NULL,format=kable_format(),...) {

uroot(series,test="adf",info=info,caption=caption,format=format,...)
}

