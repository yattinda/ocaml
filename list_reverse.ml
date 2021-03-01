let rec reverse list1 =
  if list1 = [] then []
  else reverse (List.tl list1) @ [List.hd list1]
