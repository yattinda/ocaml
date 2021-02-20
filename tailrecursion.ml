let rec tail_fact (n, a) =
  if n = 0 then a else tail_fact (n - 1, a * n);;
