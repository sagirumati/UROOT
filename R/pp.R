#' Conduct unit root test using `EViews` routines
#'
#' Use this function to conduct unit root test using `EViews` routines
#' @param series A vector of names or wildcard expressions for series object(s) contained in a dataframe.
#' @param  test Name of the unit root test. For example, `ADF`, `PP`.
#' @param info Name of the information criterion. For example, `SIC`, `AIC`, `HQ`.
#' @param caption Table caption as in `kable`.
#' @param format Table format in `kable`.

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

pp <- function(series,info="sic",caption=NULL,format=kable_format()) {

uroot(series,test="pp",info=info,caption=caption,format=format)
}

