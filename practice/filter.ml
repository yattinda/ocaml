let rec filter f = function
  [] -> []
| x :: list1 -> if f x then x :: filter f list1 else filter f list1

(*
# filter (fun x -> x mod 2 = 0) [1;2;3;4;5];;
- : int list = [2; 4]
*)
