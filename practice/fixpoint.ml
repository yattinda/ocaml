let fixpoint f initial =
  let toreshold = 0.1e-10 in
  let rec loop x =
    let next = f x in
    (*abs_floatは組み込み関数*)
    if abs_float(x -. next) < threshold then x
    else loop next
  in loop initial;;
