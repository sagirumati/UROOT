# Hello, world!
#
# This is an example function named 'hello'
#' Conduct unit root test using `EViews` routines
#'
#' Use this function to conduct unit root test using `EViews` routines

#' @return An EViews workfile
#'
#' @examples library(EviewsR)
#' \dontrun{
#' demo(exec_commands)
#'
#' eviews_graph(wf="exec_commands",page = "eviewspage1",series="x y",mode = "overwrite",
#' graph_options = "m")
#'
#' # Create graph(s) from dataframe
#'
#' Data=data.frame(x=cumsum(rnorm(100)),y=cumsum(rnorm(100)))
#'
#' eviews_graph(series=Data,start_date=1990,frequency="m")
#'
#' # Create graphs in one frame (group=TRUE)
#'
#' eviews_graph(series=Data,group=TRUE,start_date="1990Q4",frequency="Q")
#'}
#' @family important functions
#' @keywords documentation
#' @export

uroot <- function(x,test=c("adf","pp"),info="sic") {
  if(is.data.frame(x)) variables=colnames(x) else variables="uroot"

wf=tempfile("uroot",fileext = ".wf1")
wf1= paste0("%wf=", shQuote_cmd(wf))
info= paste0("%info=", shQuote_cmd(info))

EviewsR::export_dataframe(x,wf=wf)
writeLines(c(wf1,info),"somefile1.prg")
}
