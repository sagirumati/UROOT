#' Conduct `PP` unit root test using `EViews` routines
#'
#' Use this function to conduct `PP` unit root test using `EViews` routines and report it in a table.
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
#' if(any(Sys.which(eviewsExecutables)!="")) pp(series=dataFrame,format="html",info="hq")
#'}
#' @family important functions
#' @keywords documentation
#' @export

pp <- function(series,info="sic",caption=NULL,table_type="kable",format=kable_format(),...) {

uroot(series,test="pp",info=info,table_type = table_type,caption=caption,format=format,...)
}

