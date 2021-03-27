let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))
let ans = Printf.sprintf "%d" ((a - 1) * (b - 1))
let () = print_endline ans
