let rec partition n = function
  [] -> ([], [])
| x::xs ->
let (a, b) = partition n xs in
           if x < n then (x::a, b) else (a, x::b)

let rec quick_sort = function
  [] -> []
| x::xs ->
    let (m, n) = partition x xs in
    quick_sort m @ (x :: quick_sort n)
