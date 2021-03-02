let rec hello_for_n(i)=
  if i <> 0 then
  (
  Printf.printf "%d:Hello world\n" i;
  hello_for_n(i - 1);
  )
  else ();;
