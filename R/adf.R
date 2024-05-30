#' Conduct `ADF` unit root test using `EViews` routines
#'
#' Use this function to conduct `ADF` unit root test using `EViews` routines
#' @inheritParams uroot

#' @return An EViews workfile
#'
#' @examples library(URooTab)
#' \donttest{
#' set.seed(1234)
#' x=rnorm(100)
#' y=cumsum(x)
#' z=cumsum(y)
#' dataFrame=data.frame(x,y,z)
#'
#' # Check if `EViews` is installed before running the tests
#'
#' eviewsExecutables=c('eviews','eviews10',paste0('Eviews',9:13,'_X',c(86,64)))
#' if(any(Sys.which(eviewsExecutables)!="")) adf(series=dataFrame,format="latex",info="aic")
#'}
#' @family important functions
#' @keywords documentation
#' @export

adf <- function(series,info="sic",caption=NULL,table_type="kable",format=kable_format(),...) {

uroot(series,test="adf",info=info,caption=caption,table_type = table_type,format=format,...)
}

