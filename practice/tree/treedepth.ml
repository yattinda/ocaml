let rec depth = function 
    Lf -> 0
  | Br (_, left, right) -> 1 + max (depth left) (depth right) ;;
