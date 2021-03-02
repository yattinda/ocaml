let rec append list1 list2 =
  if list1 = [] then list2
  else List.hd list1 :: append (List.tl list1) list2

演算子 :: は Lisp の関数 cons と同じで、リストの先頭にデータを付け加えます
