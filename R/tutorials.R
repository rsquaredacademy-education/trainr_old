#' @importFrom learnr run_tutorial
#' @title Display Tutorials
#' @description Show all tutorials
#' @export

list_tutorials <- function(example) {
  # locate all the shiny app examples that exist
  validExamples <- list.files(system.file("tutorials", package = "trainr"))

  validExamplesMsg <-
    paste0(
      "The following tutorials are available: \n",
      paste0("'", validExamples, "'", collapse = "\n"))

  # if an invalid example is given, throw an error
  if (missing(example) || !nzchar(example) ||
      !example %in% validExamples) {
    message(validExamplesMsg)
  }

  # find and launch the app
  # appDir <- system.file("tutorials", example, package = "trainr")
  # shiny::runApp(appDir, display.mode = "normal")
  # learnr::run_tutorial(name = example, package = 'trainr')
}
