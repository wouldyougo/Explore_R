# читает csv OHLCV
# возвращает time_series xts
"read.csv.OHLCV" <-  
  function(FilePath)  
  {  
    #загрузить модуль xts, он нам нужен  
    require(xts) 
    
    #читаем данные из файла  
    #data_frame <- read.csv(FilePath, as.is = TRUE) 
    data_frame <- read.csv(FilePath, as.is = TRUE, 
                           colClasses=c("character", "character", "character", "character", "numeric", "numeric", "numeric", "numeric", "integer")
    ) 
    # посмотреть датафрейм
    #View(data_frame)
    matrix_OHLCV <- as.matrix(data_frame[,(5:9)])
    #Concatenate vectors after converting to character
    paste_date <- paste(data_frame[,3],data_frame[,4])
    # посмотреть датафрейм
    #View(paste_date)
    
    # функция strptime позволяет нам распарсить дату в заданном формате  
    #list_POSIXct_date <- strptime(data_frame[,3], "%Y%m%d")
    list_POSIXct_date <- strptime(paste_date, "%Y%m%d %H%M%S")
    #View(list_POSIXct_date)
    
    #list_date <- as.Date(list_POSIXct_date)
    time_series <- xts(matrix_OHLCV, list_POSIXct_date)  
    #View(time_series)
    
    #присваивамем новые имена колонкам для совместимости с xts  
    colnames(time_series) <- c('Open','High','Low','Close','Volume') 
    #RTS <- time_series
    #View(RTS)    
    return(time_series)  
  }

library(quantmod)
FilePath <- "z:\\R&D\\Data\\Txt\\GAZP_130101_140101_1d.txt"
#FilePath <- "z:\\R&D\\Data\\Txt\\GAZP_050101_100814_1h.txt"
data.OHLCV <- read.csv.OHLCV(FilePath)
#-----------------------------
#отображаем свечной график
#chartSeries {quantmod}
chartSeries(data.OHLCV)