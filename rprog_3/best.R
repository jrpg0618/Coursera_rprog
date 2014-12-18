best <- function(state, outcome) {
    
    source("getHospitalData.R")
    ## Read outcome data
    myData <- getHospitalData(state, outcome)
    # myData <- myData[!is.na(myData$outcomeData),]
    minValue <- min(myData[,"outcomeData"])
    
    ## Return hospital name in that state with lowest 30-day death
    ## rate
    SelectHospital <- myData[myData$outcomeData==minValue, "Hospital.Name"]
    as.character(SelectHospital[[order(SelectHospital)]])
    
}