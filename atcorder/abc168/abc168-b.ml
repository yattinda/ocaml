let num = read_int()
let str = read_line()
let str_num  = String.length str
let ans = if str_num <= num then str
			else (String.sub str 0 num) ^ "..."
let () = print_endline ans
