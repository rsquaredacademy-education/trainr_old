#' @importFrom learnr run_tutorial
#' @importFrom cli rule
#' @importFrom crayon red blue
#' @title Display Tutorials
#' @description Show all tutorials
#' @export

learn_tutorials_list <- function() {
  # locate all the tutorials that exist
  validExamples <- list.files(system.file("tutorials", package = "trainr"))

  validExamplesMsg <-
    paste0(
      rule(center = red(" List of Tutorials ")), "\n",
      blue(paste0("- ", validExamples, collapse = "\n")))

  message(validExamplesMsg)

}
