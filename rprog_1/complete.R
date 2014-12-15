complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  result <- data.frame(id, nobs=0)
  for(mid in id){
    idStr <- formatC(mid, width = 3, format = "d", flag = "0")
    fileNames <- paste(directory,"/", idStr, ".csv", sep="")
    good <- complete.cases( read.csv(fileNames) )
    result[id==mid, "nobs"] <- sum(good)
  }
  
  result
  
  
  
}