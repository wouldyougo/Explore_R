#
#library="C:/Users/user/Documents/R/win-library/3.0"
#
install.packages('quantmod')
install.packages('knitr')
#


#
#devtools
#
install.packages('devtools')
require(devtools)
#Please download and install Rtools 3.1 from http://cran.r-project.org/bin/windows/Rtools/ and then run find_rtools().
find_rtools()
require(devtools)
#

#
#You can install rCharts from github using the devtools package
#
require(devtools)
install_github('rCharts', 'ramnathv')
install_github("rCharts", "ramnathv", ref = "dev")
require(rCharts)
#


#
#googleVis
#
install.packages('RJSONIO')
#install.packages("Z:/R&D/Dev Programs/De_ R/Packages/RJSONIO_1.0-3.zip", repos = NULL)
require(RJSONIO)
install.packages('googleVis')
#require(googleVis)
suppressPackageStartupMessages(
  require(googleVis)
)
#

#
#Step Next: Install Slidify
#
require(devtools)
install_github("slidify", "ramnathv")
install_github("slidifyLibraries", "ramnathv")
library(slidify)
#

#
# EMD
#
install.packages('EMD')
require(EMD)

help(EMD)
library(help = "EMD")
vignette(package = "EMD")
browseVignettes(package = "EMD")
#

#
# hht
#
install.packages('hht')
require(hht)
#