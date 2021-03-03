let rec mapcar f = function
  [] -> []
| x :: list1 -> f x :: mapcar f list1

(*
# mapcar (fun x -> x * x) [1; 2; 3; 4; 5];;
- : int list = [1; 4; 9; 16; 25]
*)
