#' @importFrom learnr run_tutorial
#' @title Display Tutorials
#' @description Show all tutorials
#' @export

learn_tutorials_list <- function(example) {
  # locate all the shiny app examples that exist
  validExamples <- list.files(system.file("tutorials", package = "trainr"))

  validExamplesMsg <-
    paste0(
      cli::rule(center = crayon::red(" List of Tutorials ")), "\n",
      crayon::blue(paste0("- ", validExamples, collapse = "\n")))

  # if an invalid example is given, throw an error
  if (missing(example) || !nzchar(example) ||
      !example %in% validExamples) {
    message(validExamplesMsg)
  }

}
