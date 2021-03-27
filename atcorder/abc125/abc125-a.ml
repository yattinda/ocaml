let a, b, t = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b t -> (a, b, t))

let ans = Printf.sprintf "%d" ((t / a) * b)

let () = print_endline ans
