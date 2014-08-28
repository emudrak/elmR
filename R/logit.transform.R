#' Logit Transformation
#'
#' Perform a logit transformation for data with zeros and ones included
#' (Phil Dixon's suggestion)
#' @param x is a vector of values between 0 and 1 inclusive
#' @keywords logit tranform
#' @export 
#' @examples
#' logit.transform(seq(0,1))

logit.transform = function(x){  
    #  x is a vector of values between 0 and 1 inclusive
    if(sum(x[x!=0], na.rm=TRUE)==0) 
        eps=0
       else    
        eps=min(x[x!=0], na.rm=TRUE)
    x[x==0]=0.5*eps
    x[x==1]=1-0.5*eps
    return(log(x/(1-x)))
}