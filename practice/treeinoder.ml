let rec inoder = function
    Lf -> []
  | Br (x, left, right) -> (inoder left) @ (x ::  inoder right);