let length arr = 
	let rec pom x = function
		| [] -> x
		| h :: t -> pom (x + 1) t
	in pom 0 arr