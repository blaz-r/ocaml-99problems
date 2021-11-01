let pack arr =
  let rec pom acc = function
    | [] -> [acc]
    | x :: [] -> [acc @ [x]]
    | h :: c :: t ->  if h = c then
                        pom (acc @ [h]) (c :: t)
                      else
                        (acc @ [h]) :: (pom [] (c :: t))
  in pom [] arr 