let num = read_int() mod 10
let ans = 
	match num with
    |3 -> "bon"
    |0 -> "pon"
    |1 -> "pon"
    |6 -> "pon"
    |8 -> "pon"
    | _ -> "hon"
    
let () = print_endline ans
