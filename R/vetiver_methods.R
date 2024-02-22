#' @export
# Responsible for attaching packages from metadata
handler_startup.my_model <- function(vetiver_model) {
  vetiver::attach_pkgs(vetiver_model$metadata$required_pkgs)
}

#' @export
# Responsible for setting up the model, incorporating requests from the API
handler_predict.my_model <- function(vetiver_model, ...) {

  function(req) {
    req <- req$body
    print("Custom Message")
  }
}

#' @export
vetiver_create_description.my_model <- function(model) {
  "A dummy model"
}

#' @export
vetiver_ptype.my_model <- function(model, ...) {
  tibble::tibble("cyl" = numeric())
}


#' @export
# Responsible for setting up the model, incorporating requests from the API
predict.my_model <- function(vetiver_model, ...) {

  function(req) {
    req <- req$body
    print("Custom Message")
  }
}
