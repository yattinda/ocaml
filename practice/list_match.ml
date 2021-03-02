(* 探索 *)
let rec member x = function
  [] -> []
| (y :: list2) as list1 when x = y -> list1
| (y :: list2) -> member x list2
