let derivative f =
  let dx = 0.1e-10 in
    fun x -> (f(x +. dx) -. f(x)) /. dx;;
