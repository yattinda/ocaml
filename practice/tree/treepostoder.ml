let rec postoder = function
    Lf -> []
  | Br (x, left, right) -> (postoder left) @ (postoder right) @ [x];