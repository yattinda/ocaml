let rec append list1 list2 =
  if list1 = [] then list2
  else List.hd list1 :: append (List.tl list1) list2

(*演算子 :: は Lisp の関数 cons と同じで、リストの先頭にデータを付け加えます*)

let rec match_append list1 list2 =
  match list1 with
    [] -> list2
  | x :: list1 -> x :: (append list1 list2)

(*
このパターンはリストとマッチングして、先頭の要素が x に、
先頭要素を取り除いた残りのリストが list1 に束縛されます。

(1) [x]         要素が 1 つのリストとマッチング
(2) [x; y]      要素が 2 つのリストとマッチング
(3) x::xs       要素が 1 つ以上あるリストとマッチング
(4) x1::x2::xs  要素が 2 つ以上あるリストとマッチング
(5) (x, y)::xs  要素が組のリストとマッチング
    ex) [(1, 2); (3, 4); (5, 6)] => x = 1, y = 2, xs = [(3, 4); (5, 6)]

(6) (x::xs)::ys 要素がリストのリスト ('a list list) とマッチング
    ex) [[1; 2; 3], [4; 5], [6]] => x = 1, xs = [2; 3], ys = [[4; 5]; [6]]
*)
