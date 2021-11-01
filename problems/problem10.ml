
let encode arr =
  let rec pom count = function
    | [] -> []
    | chr :: [] -> [(count, chr)]
    | h :: c :: t ->  if h = c then
                        pom (count + 1) (c :: t)
                      else
                        (count, h) :: (pom 1 (c :: t))
  in pom 1 arr