getRankHospital <- function(myData, num="best"){

    ## Return hospital name in that state with the given rank
    ## 30-day death rate
    nObs <- nrow(myData)
    if (num=="best"){
        num <- 1
    } else if (num=="worst"){
        num <- nObs
    } else if (num>nObs) {
        return(NA)
    }
    
    myData <- myData[order(myData[,"outcomeData"], myData[,"Hospital.Name"]),]
    
    as.character(myData[num, "Hospital.Name"])
    
}