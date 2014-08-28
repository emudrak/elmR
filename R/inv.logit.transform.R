#' Inverse Logit Transformation
#'
#' Perform the inverse logit transformation for data with zeros and ones included #' (Phil Dixon's suggestion)
#' @param     #alpha is a vector of real number
#' @keywords inverse logit tranform
#' @return a vector of inverse logit transformed values 
#'    if(alpha>705) return(1) #otherwise too big to exp()
#' @export 
#' @seealso logit
#' @examples
#' pc=seq(0,1,by=0.01)
#' cbind(pc, inv_logit(logit(pc)))
#' plot(pc, logit(pc), pch=19, col="gray", cex=1.2, ylab="transformed value")
#' points(pc, log(pc/(1-pc)), pch=20)
#' plot(pc, inv_logit(logit(pc)))

inv_logit=function(alpha){
    #alpha is a vector of real number
    #if(alpha>705) return(1) #otherwise too big to exp()
    alpha[alpha>709]=709   #This is largest number R will take to 1.  Otherwise NaN
    return(exp(alpha)/(exp(alpha)+1))
}