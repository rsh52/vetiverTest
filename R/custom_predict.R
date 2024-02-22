#' @title Custom Predict
#'
#' @inheritParams stats::predict
#'
#' @export

custom_predict <- function(object, ...){
  predict(object, ...)
}
