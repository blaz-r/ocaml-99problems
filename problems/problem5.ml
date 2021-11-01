let rec rev = function
  | [] -> []
  | [x] -> [x]
  | h :: t -> (rev t) @ [h]