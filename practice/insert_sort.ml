let rec insert_sort a =
  let rec insert_element x = function
    [] -> [x]
  | (y::b) as a -> if x < y then x::a else y::insert_element x b
  in
    match a with
      [] -> []
    | y::b -> insert_element y (insert_sort b)
