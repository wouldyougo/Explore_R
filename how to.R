#
# how to examples
#

#
# require packages
#
require(quantmod)
require(rCharts)
suppressPackageStartupMessages(
  require(googleVis)
)
#


#
# DateTime POSIXct
#
txt <- "Date  Time  value
20010101 000000  0.833
20010101 000500  0.814
20010101 001000  0.794
20010101 001500  0.772"
print(txt)

df <- read.table(text=txt, header=TRUE, 
                 colClasses=c("character", "character", "numeric"))
df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format="%Y%m%d %H%M%S")
# посмотреть датафрейм
print(df)
# посмотреть датафрейм в отдельном окне
View(df)
#

#
# reproduce the post
#
library(slidify)
author("mydeck")
slidify("index.Rmd")
system('open index.html')

publish('mydeck', host = 'dropbox')
#


#
#
#
knitr::opts_chunk$get()
knitr::opts_chunk$get("comment")
knitr::opts_chunk$set(comment = NA, results = 'asis')
#