corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  id <- 1:332
  result <- c()
  for(mid in id){
    idStr <- formatC(mid, width = 3, format = "d", flag = "0")
    fileNames <- paste(directory,"/", idStr, ".csv", sep="")
    pData = read.csv(fileNames)
    good <- complete.cases( pData )
    corId <- if(sum(good)>threshold){
      cor(pData[good,'sulfate'], pData[good,'nitrate'])
    }
    result <- c(result, corId)
  }
  result
  
}

