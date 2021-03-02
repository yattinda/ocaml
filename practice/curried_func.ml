let sum_of_square = sum_of (fun x -> x * x);;
let sum_of_cube = sum_of (fun x -> x * x * x);;

let rec sum_of f n m a =
  if n > m then a
  else sum_of f (n + 1) m (a + f n);;

(*関数型言語は関数をデータ型の一つとして扱うことができるので、
*関数の返り値として関数を返すことができます。
*この「関数を返す関数」を使うと、関数の引数が一つでも複数の引数を処理することができます。
*このような関数を「カリー化関数 (curried function)」といいます*)

(*関数をカリー化する場合、引数をカッコで囲わず、カンマでも区切りません
*)
