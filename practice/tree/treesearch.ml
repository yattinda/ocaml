let rec search t x = 
  match t with
    Lf -> false
  | Br (y, left, right) ->
      if x = y then true
      else if x < y then search left x
      else search right x
