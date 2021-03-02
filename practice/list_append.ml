let rec append list1 list2 =
  if list1 = [] then list2
  else List.hd list1 :: append (List.tl list1) list2

(*演算子 :: は Lisp の関数 cons と同じで、リストの先頭にデータを付け加えます*)

let rec match_append list1 list2 =
  match list1 with
    [] -> list2
  | x :: list1 -> x :: (append list1 list2)

(*
(1) [x]         要素が 1 つのリストとマッチング
(2) [x; y]      要素が 2 つのリストとマッチング
(3) x::xs       要素が 1 つ以上あるリストとマッチング
(4) x1::x2::xs  要素が 2 つ以上あるリストとマッチング
(5) x1::x1::xs  エラー
*)
