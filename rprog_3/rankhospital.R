rankhospital <- function(state, outcome, num = "best") {
    
    source("getHospitalData.R")
    ## Read outcome data
    ## Check that state and outcome are valid
    myData <- getHospitalData(state, outcome)

    ## Return hospital name in that state with the given rank
    ## 30-day death rate
    source("getRankHospital.R")
    getRankHospital(myData, num)
    
}