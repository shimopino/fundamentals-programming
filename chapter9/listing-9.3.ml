(* 
    #use "chapter9/listing-9.3.ml" ;; 
 *)

match [] with
      [] -> 0
    | first :: rest -> first ;;

(* - int = 0 *)

match [1; 2; 3] with
      [] -> 0
    | first :: rest -> first ;;

(* - int = 1 *)