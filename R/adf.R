#' Conduct `ADF` unit root test using `EViews` routines
#'
#' Use this function to conduct unit root test using `EViews` routines
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
#' adf(series=dataFrame,format="latex",info="aic")
#'}
#' @family important functions
#' @keywords documentation
#' @export

adf <- function(series,info="sic",caption=NULL,format=kable_format(),...) {

uroot(series,test="adf",info=info,caption=caption,format=format,...)
}

