let fibonacci n =
  let rec fibo (n, a1, a2) =
    if n = 0 then a1 else fibo (n - 1, a1 + a2, a1)
  in
    fibo (n, 1, 0)

(*

nがカウンターみたいな役割

fibo (5, 1, 0)
  fibo (4, 1, 1)
    fibo (3, 2, 1)
      fibo (2, 3, 2)
        fibo (1, 5, 3)
          fibo (0, 8, 5)
          => a1 の値 8 を返す

*)
