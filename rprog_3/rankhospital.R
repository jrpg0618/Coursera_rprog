rankhospital <- function(state, outcome, num = "best") {
    
    source("getHospitalData.R")
    ## Read outcome data
    myData <- getHospitalData(state, outcome)

    ## Check that state and outcome are valid
    ## Return hospital name in that state with the given rank
    ## 30-day death rate
    
}