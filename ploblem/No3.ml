(*
整数 1 から n までの総和を求める関数 sum n
整数 1 から n までの平方数の総和を求める関数 square_sum n
整数 1 から n までの三乗数の総和を求める関数 cube_sum n
*)

let sum n =
  let rec sum_tail (n, a) =
    if n = 0 then a
    else sum_tail (n - 1, a + n)
  in
    sum_tail (n, 0)

let square_sum n =
  let rec square_sum_tail (n, a) =
    if n = 0 then a
    else square_sum_tail (n - 1, a + (n * n))
  in
    square_sum_tail (n, 0)

let cube_sum n =
      let rec cube_sum_tail (n, a) =
        if n = 0 then a
        else cube_sum_tail (n - 1, a + (n * n * n))
      in
        cube_sum_tail (n, 0)
