let rec length ls =
  if ls = [] then 0
  else 1 + length (List.tl ls)
