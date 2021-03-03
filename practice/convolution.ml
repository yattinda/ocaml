let rec reduce f a = function
  [] -> a
| x :: list1 -> reduce f (f a x) list1

let rec reduce_right f a = function
  [] -> a
| x :: list1 -> f x (reduce_right f a list1)
