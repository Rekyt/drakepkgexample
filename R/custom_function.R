# Custom function example to get a dependency when parallelizing

#' Custom function with external dependency
#'
#' @export
custom_function = function(given_numbers) {
  raster::raster(matrix(given_numbers))
}
