let rec sum_of_integer (n, m, a) =
  if n > m then a
  else sum_of_integer (n + 1, m, a + n);;
