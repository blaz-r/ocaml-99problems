type 'a rle =
  | One of 'a
  | Many of int * 'a;;


let encode arr =
  let rec pom count = function
    | [] -> []
    | chr :: [] ->  if count = 1 then
                      [One chr]
                    else
                      [Many (count, chr)]
    | h :: c :: t ->  if h = c then
                        pom (count + 1) (c :: t)
                      else
                        if count = 1 then
                          One h :: (pom 1 (c :: t))
                        else
                          Many (count, h) :: (pom 1 (c :: t))
                        
  in pom 1 arr