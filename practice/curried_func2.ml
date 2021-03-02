let plus = fun x -> fun y -> x + y;;
(*
*引数を一つだけ渡すと「引数yを受け取ってx+yを計算する関数」を返します。
*引数を2つ渡すと、それを足し算した値を返します。
*カリー化関数の場合、引数は空白で区切ることに注意してください。
*)