#' @title Custom Model
#'
#' @description
#' Taken from workflows documentation
#'
#' @export

get_my_model <- function(){
  model <- lm(data = mtcars, mpg ~ cyl)
}
