(* #use "chapter6/exercise-6.1.ml" ;; *)

(* 
    # square 3.0 ;;
    Error: This expression has type float but an expression was expected of type
            int
 *)
let square x = x * x ;;

(* 
    # circle 2.0 ;;
    Error: Unbound value circle
 *)
let circle = 2.0 *. pi *. r ;;

(* 
    19 | let TV bangumi youbi = 
                        ^^^^^
    Error: Syntax error
 *)
let TV bangumi youbi = 
    bangumi ^ "は" ^ youbi ^ "に放映です。" ;;
