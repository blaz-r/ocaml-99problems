
let rec compress = function
  | [] -> []
  | x :: [] -> [x]
  | h :: c :: t ->  if h = c then 
                      compress (c :: t) 
                    else 
                      [h] @ (compress (c :: t))