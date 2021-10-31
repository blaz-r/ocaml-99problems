let rec last_two = function
	| [] -> None
	| _ :: [] -> None
	| [x ; y] -> Some x
	| _ :: _ :: t -> last_two t