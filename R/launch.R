#' @importFrom learnr run_tutorial
#' @importFrom pingr ping
#' @title Learn dplyr
#' @description dplyr tutorial
#' @export
#'
learn_dplyr <- function() {
  if (is.na(ping('www.google.com', count = 1))) {
    stop('Please ensure that you are connected to the internet.', call. = FALSE)
  }
  learnr::run_tutorial(name = 'dplyr-part-1', package = 'practicer')
}

#' @title Learn Matrix
#' @description Matrix tutorial
#' @export
#'
learn_matrix <- function() {
  learnr::run_tutorial(name = 'matrix', package = 'practicer')
}
