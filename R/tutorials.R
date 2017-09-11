#' @importFrom tibble tibble
#' @title List Tutorials
#' @description List all the tutorials available
#' @export
#'
list_tutorials <- function() {
  out <- tibble(title = c('Learn dplyr', 'Learn Matrix'),
                description = c('Learn to wrangle data with dplyr',
                                'Learn matrix'))
  return(out)
}
