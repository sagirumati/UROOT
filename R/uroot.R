# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#| @import EviewsR


uroot <- function(x,test=c("adf","pp"),info="sic") {
  if(is.data.frame(x)) variables=colnames(x) else variables="uroot"

wf=tempfile("uroot",fileext = ".wf1")
wf1= paste0("%wf=", shQuote_cmd(wf))
info= paste0("%info=", shQuote_cmd(info))

EviewsR::export_dataframe(x,wf=wf)
writeLines(c(wf1,info),"somefile.prg")
}
