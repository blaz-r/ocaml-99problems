let rec rev = function
	| [] -> []
	| [x] -> [x]
	| h :: t -> (rev t) @ [h]

let is_palindrome arr = (rev arr) = arr