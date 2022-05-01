(* 
    #use "chapter7/listing-7.2.ml" ;;
 *)

match (3, 5) with
    (a, b) -> a + b ;;

let add1 pair = match pair with
    (a, b) -> a + b ;;

add1 (3, 5) ;;

let add2 (a, b) = a + b ;;

add2 (3, 5) ;;