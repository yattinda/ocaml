let rec size = function
    Lf -> 0
  | Br (_, left, right) -> 1 + size left + size right;;