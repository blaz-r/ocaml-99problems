type 'a node =
	| One of 'a 
	| Many of 'a node list;;

let rec flatten = function
	| [] -> []
	| Many h :: t -> (flatten h) @ (flatten t)
	| One h :: t -> [h] @ (flatten t)