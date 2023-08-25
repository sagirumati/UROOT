#' Conduct unit root test using `EViews` routines
#'
#' Use this function to conduct unit root test using `EViews` routines
#' @param series A vector of names or wildcard expressions for series object(s) contained in a dataframe.
#' @param  test Name of the unit root test. For example, `ADF`, `PP`.
#' @param info Name of the information criterion. For example, `SIC`, `AIC`, `HQ`.

#' @return An EViews workfile
#'
#' @examples library(UROOT)
#' \dontrun{
#' Data=data.frame(x=cumsum(rnorm(100)),y=cumsum(rnorm(100)))
#' uroot(series=Data,test="ADF",info="sic")
#'
#'}
#' @family important functions
#' @keywords documentation
#' @export

uroot <- function(series,test=c("adf","pp"),info="sic") {
  if(!is.data.frame(series)) series=as.data.frame(series)
  series=colnames(series) %>% paste(collapse = ",")
  test=colnames(test) %>% paste(collapse = " ")

wf=tempfile("uroot",fileext = ".wf1")
wf1= paste0("%wf=", shQuote_cmd(wf))

file=tempfile("uroot",fileext = ".prg")
series= paste0("%series=", shQuote_cmd(series))
test= paste0("%test=", shQuote_cmd(test))
info= paste0("%info=", shQuote_cmd(info))



export_dataframe(series,wf=wf)
writeLines(c(series,test,wf1,info,EviewsCodes),file)
system_exec(file)
}

