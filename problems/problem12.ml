type 'a rle =
  | One of 'a
  | Many of int * 'a;;


let rec decode = function
  | [] -> []
  | One c :: t -> c :: decode t
  | Many (num, c) :: t -> if num > 1 then
                            c :: decode (Many (num - 1, c) :: t)
                          else
                            c :: decode t
                              