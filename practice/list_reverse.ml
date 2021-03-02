let rec reverse list1 =
  if list1 = [] then []
  else reverse (List.tl list1) @ [List.hd list1]

(*演算子 @ は Lisp の関数 append と同じで、2つのリストをつないだリストを返します。*)

let rec match_reverse = function
  [] -> []
| x :: list -> reverse list @ [x]
