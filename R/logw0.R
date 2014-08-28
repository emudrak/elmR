#' Log transformation with zeros 
#'
#' Perform a log transformation on a vector including zeros
#' @param    x is a vector of values >=0
#' @keywords log transform
#' @return   preserves orders of magnitudes and results in 0 when original data is zero. 
#' @export 
#' @seealso logit
#' @details posmin(x) is the smallest non-zero value in the data
#'    trunc(x) truncates x to an interger by dropping digits after decimal
#'    c=int(log(posmin(x)))
#'    d=exp(c)
#'    logw0(x)=log(x+d)-c
#' @references McCune, Bruce and James Grace. 2002. Analysis of Ecological Communities. MjM Software Design, Glenden Beach OR. pgs 68-69
#' @examples
#' tx=seq(0,5,by=0.001)

#' plot(tx, log(tx))
#' plot(tx, log(tx+1))
#' plot(tx, logw0(tx))
#' pairs(cbind(orig=tx, log=log(tx), logp1=log(tx+1), logw0=logw0(tx) ), #' lower.panel=NULL, row1attop = FALSE)

#' Note logp1 changes overall shape of transform- the log relationship is lost. 


logw0=function(x){ 


  c=trunc(log(min(x[x>0], na.rm=T)))
  d=exp(c)
  return(log(x+d)-c)
}
