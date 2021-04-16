(*
要素 x を n 個持つリストを生成する関数 make_list x n
リスト xs の先頭から n 個の要素を取り出す関数 take xs n
リストの先頭から n 個の要素を取り除く関数 drop xs n
2 つのリスト xs, ys の要素をタプルにまとめたリストを返す関数 zip xs ys
zip の逆変換を行う関数 unzip
*)

(* ここまでしかわからん

let rec make_list x n =
  match n with
    0 -> []
  | n -> n :: make_list x (n - 1)

let rec take xs n =
  match n with
    0 -> []
  | n -> (List.hd xs) :: take (List.tl xs) (n - 1)

let rec drop xs n =
  match n with
    0 -> []
  | n -> drop (List.tl xs) (n - 1)

let rec zip xs ys

*)

(*以下模範解答*)

let rec make_list x n =
  match n with
    0 -> []
  | n -> x :: make_list x (n - 1)

let rec take xs n =
  match (n, xs) with
    (0, _) | (_, []) -> []
  | (_, y::ys) -> y :: take ys (n - 1)

let rec drop xs n =
  match (n, xs) with
    (0, _) -> xs
  | (_, []) -> []
  | (_, _::ys) -> drop ys (n - 1)

let rec zip xs ys =
  match (xs, ys) with
    ([], _) | (_, []) -> []
    | (x::xs1, y::ys1) -> (x, y) :: zip xs1 ys1

let rec unzip = function
    [] -> ([], [])
  | (x, y)::zs -> let (xs, ys) = unzip zs in (x::xs, y::ys)