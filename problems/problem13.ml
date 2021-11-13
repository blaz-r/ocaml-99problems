(* I don't understand exactly what I was supposed to change, 
since the instruction is not to creat sublists containing duplicates
which I wasn't doing anyway. At least I think that's it...*)

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