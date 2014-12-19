rankall <- function(outcome, num = "best") {
    
    ## Read outcome data
    source("getHospitalData.R")
    myData <- getHospitalData(state="All", outcome)
    ## Check that state and outcome are valid
    splitData <- split(myData, myData$State)
    ## For each state, find the hospital of the given rank
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
    source("getRankHospital.R")
    result <- lapply(splitData, getRankHospital, num=num)
    
    result <- data.frame(hospital=sapply(result, function(x){x[[1]]})
                         , state=names(result))
    
}