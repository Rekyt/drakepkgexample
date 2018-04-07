# This file contain the plan function that defines the drake plan to run the
# workflow

#' Analysis Plan
#'
#' @export
my_plan = function() {
  simple_plan = drake::drake_plan(
    random_number = rnorm(my_num)
  )

  drake::evaluate_plan(simple_plan, rules = list(my_num = c(1:5)))
}
