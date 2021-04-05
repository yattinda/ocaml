let rec add t x =
  match t with
    Lf -> Br(x, Lf, Lf)
  | (Br (y, left, right) as whole) when x = y -> whole
  | Br (y, left, right) when x < y -> Br(y, add left x, right)
  | Br (y, left, right) ->  Br(y, left, add right x);;
