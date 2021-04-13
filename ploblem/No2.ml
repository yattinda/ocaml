(*
hello, world を n 回表示する関数 print_hello n
文字列 OCaml を n 行 m 列に表示する関数 print_ocaml n m
整数 1 から n までの総和を求める関数 sum n
整数 1 から n までの平方数の総和を求める関数 square_sum n
整数 1 から n までの三乗数の総和を求める関数 cube_sum n
*)

let rec print_hello n =
  if n = 0 then ()
  else
  begin
  print_string "hello world\n";
  print_hello (n - 1)
  end;;

let rec print_line m =
  if m = 0 then ()
  else
  begin
  print_string "OCaml ";
  print_line (m - 1)
  end;;

let rec print_ocaml (n, m) =
  if n = 0 then ()
  else
  begin
  print_line m;
  print_string "\n";
  print_ocaml (n - 1, m);
  end

let rec sum n =
  if n = 0 then 0
  else n + sum (n - 1);;

let square x = x * x;;

let rec square_sum n =
  if n = 0 then 0
  else square n + square_sum (n - 1);;

let cube x = x * x * x;;

  let rec cube_sum n =
    if n = 0 then 0
    else cube n + cube_sum (n - 1);;
