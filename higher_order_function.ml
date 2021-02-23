let square x = x * x ;;
let cube x = x * x * x ;;

let rec sum_of (f, n, m, a) =
  if n > m then a
  else sum_of (f, n + 1, m, a + f n);;

(*sum_ofの第1引数にsquareやcubeを指定するだけで、変数に格納されている関数を渡すことができる*)
