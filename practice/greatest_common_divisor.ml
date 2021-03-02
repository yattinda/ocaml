let rec gcd a = function
  0 -> a
| b -> gcd b (a mod b)

(*カリー化関数で function 文を使うとき、一番最後の引数がマッチングの対象になることに注意してください。*)
