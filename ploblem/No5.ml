(*
要素 x を n 個持つリストを生成する関数 make_list x n
整数 n から m までを格納したリストを作る関数 iota n m
リスト xs の先頭から n 個の要素を取り出す関数 take xs n
リストの先頭から n 個の要素を取り除く関数 drop xs n
2 つのリスト xs, ys の要素をタプルにまとめたリストを返す関数 zip xs ys
zip の逆変換を行う関数 unzip
*)

let rec make_list x n =
  if n = 0 then []
  else x :: make_list x (n - 1)

let rec iota n m =
  if n > m then []
  else n :: iota (n + 1) m

let rec take xs n =
  if n = 0 || xs = [] then []
  else (List.hd xs) :: take (List.tl xs) (n - 1)

let rec drop xs n =
  if n = 0 || xs = [] then []
  else drop (List.tl xs) (n - 1)

let rec zip xs ys =
  if xs = [] || ys = [] then []
  else (List.hd xs, List.hd ys) :: zip (List.tl xs) (List.tl ys)

(*unzipわからん*)
