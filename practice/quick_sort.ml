let rec quick_sort = function
  [] -> []
| x::xs ->
    let (m, n) = partition x xs in
    quick_sort m @ (x :: quick_sort n)
