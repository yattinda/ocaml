let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))

let rec range a b =
  if a > b then []
  else a :: range (a + 1) b;;

let ans = range (b - a + 1) (a + b - 1)

let () = print_string (String.concat " " (List.map string_of_int ans))
