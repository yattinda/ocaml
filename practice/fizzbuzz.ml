let rec fizzbuzz n max =
  if n == 57 then Printf.printf "57 is CERTAINLY a prime number!! OK??\n"
  else if n mod 15 == 0 then Printf.printf "%d is fizz buzz\n" n
  else if n mod 3 == 0 && n <> 57 then Printf.printf "%d is fizz\n" n
  else if n mod 5 == 0 then Printf.printf "%d is buzz\n" n
  else Printf.printf "%d\n" n;

  if n <= max then fizzbuzz (n + 1) max

let () = fizzbuzz 1 56
