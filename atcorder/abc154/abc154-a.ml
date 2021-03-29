let tmp = read_line()
let tmp2 = Str.split (Str.regexp " ") tmp
let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))
let u = read_line()

let s = List.nth tmp2 0;;
let t = List.nth tmp2 1;;

if u == s then 
	print_endline ((string_of_int (a - 1)) ^ " " ^ (string_of_int b))
else
	print_endline ((string_of_int a) ^ " " ^ (string_of_int (b - 1)))  
