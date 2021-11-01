let rec last = function
  | [] -> None
  | [x] -> Some x
  | h :: t -> last t