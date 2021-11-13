let replicate list count =
  let rec pom originC currCount = function
    | [] -> []
    | h :: t -> if currCount > 1 then
                  h :: pom originC (currCount - 1) (h :: t)
                else
                  h :: pom originC originC t
  in pom count count list