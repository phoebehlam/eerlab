#' skin temp calibration between biolab and anslab
#'
#' exclude based on user input sd from the mean
#' @param biolab1 first value in from biolab
#' @param anslab1 corresponding anslab value to first value from biolab
#' @param biolab2 second value in from biolab
#' @param anslab2 corresponding anslab value to second value from biolab
#' 
#' @export
sktcal <- function (biolab1, anslab1, biolab2, anslab2) {
  
  a<-matrix(c(biolab1, biolab2,
           1, 1),
         nrow=2)
  
  b<-matrix(c(anslab1, anslab2), nrow=2)
  
  ans<-solve(a, b)
  rownames(ans) <- c("slope", "intercept")
  
  return(ans)
  
}
