let rec fact n =
  match n with
    0 -> 1
  | n -> n * fact (n - 1)

let rec fact_func = function
  0 -> 1
| n -> n * fact (n - 1)
