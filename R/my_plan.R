# This file contain the plan function that defines the drake plan to run the
# workflow

#' Analysis Plan
#'
#' @export
my_plan = function(given_number = 5) {

  num_list = seq_len(given_number)

  simple_plan = drake::drake_plan(
    random_number = rnorm(my_num)
  )

  rnumbers = drake::evaluate_plan(simple_plan, rules = list(my_num = num_list))

  create_raster = drake::drake_plan(
    given_raster = custom_function(random_number_my_num)
  )

  drake::bind_plans(
    rnumbers,
    drake::evaluate_plan(create_raster, rules = list(my_num = num_list))
  )
}
