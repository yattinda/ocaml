let sx, sy, gx, gy = Scanf.sscanf (read_line ()) "%d %d %d %d" (fun sx sy gx gy -> (sx, sy, gx, gy))
let dis = (float(sx * gy + sy * gx) /. float(sy + gy))
let ans = Printf.sprintf "%f" dis
let () = print_endline ans
