let rec at k = function
	| [] -> None
	| x :: t -> if k == 1 then Some x else at (k - 1) t
