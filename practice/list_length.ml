let rec length ls =
  if ls = [] then 0
  else 1 + length (List.tl ls)


let rec match_length = function
  [] -> 0
| x :: list -> 1 + length list
