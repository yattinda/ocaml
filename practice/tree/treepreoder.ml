let rec preoder = function
    Lf -> []
  | Br (x, left, right) -> x :: (preoder left) @ (preoder right);;