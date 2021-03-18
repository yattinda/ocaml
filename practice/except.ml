exception Negative

let fact n =
  let facti n a =
    if n = 0 then a
    else facti (n - 1) (n * a)
  in
    if n < 0 then raise Negative
    else facti n 1
