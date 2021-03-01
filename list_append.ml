let rec append list1 list2 =
  if list1 = [] then list2
  else List.hd list1 :: append (List.tl list1) list2
