(*
実数 x を 2 乗する関数 square
円周率 pi (3.14159265359)
円の面積を求める関数 circle_area r
二つの引数の平均値をとる関数 medium (a, b)
二つの引数の二乗の平均値をとる関数 square_medium (a, b)
*)

let square x = x *. x;;

let pi = 3.14159265359;;

let circle_area r = pi *. square r;;

let medium (a, b) = (a +. b) / 2.0;;

let square_medium (a, b) = medium (square a, square b);;
