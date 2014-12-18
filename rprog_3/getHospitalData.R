getHospitalData <- function(state, outcome){
    ## Read outcome data
    measures.data <- read.csv("outcome-of-care-measures.csv", 
                              colClasses = "character")
    
    outcomes <- c("heart attack", "heart failure", "pneumonia") 
    ## Check that state and outcome are valid
    checkState <- state %in% measures.data$State
    if (!checkState) stop("invalid state")
    idx <- match(outcome, outcomes)
    if (is.na(idx)) stop("invalid outcome")
    outcomeData <- as.numeric( measures.data[,idx*6+5] ) # 11, 17, 23
    
    ## Determine the Hospital
    State <- measures.data[, "State"]
    Hospital.Name <- measures.data[, "Hospital.Name"]
    myData <- data.frame(State, Hospital.Name, outcomeData)
    myData <- na.omit(myData[myData$State==state,])
    
    
    
}