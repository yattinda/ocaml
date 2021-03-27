let a = read_line()
let len = String.length a

let ans = Printf.sprintf "%s" (String.sub a 0 1) ^ (string_of_int (len - 2)) ^ (String.sub a (len - 1) 1)

let () = print_endline ans
