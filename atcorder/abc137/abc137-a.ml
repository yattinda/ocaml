let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))
let plus = a + b
let minas = a - b
let mul = a * b

let max a b =
    if a > b then a else b;;

let ans = Printf.sprintf "%d" (max minas(max mul plus))

let () = print_endline ans
