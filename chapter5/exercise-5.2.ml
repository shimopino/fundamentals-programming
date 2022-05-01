(* #use "chapter5/exercise-5.2.ml" ;; *)

let jikan x = 
    if x < 12 then "午前"
              else "午後" ;;

let test1 = jikan 0 = "午前" ;;
let test1 = jikan 1 = "午前" ;;
let test1 = jikan 12 = "午後" ;;
let test1 = jikan 24 = "午後" ;;
