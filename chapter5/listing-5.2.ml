(* 
    #use "chapter5/listing-5.2.ml" ;;

    条件文
        if 条件（bool） then 式 else 式
 *)

(* - : int = 1 *)
if true then 1 else 2 ;;

(* - : int = 1 *)
if false then 1 else 2 ;;

(* if false then 1 else "2" ;; *)
(* 
    14 | if false then 1 else "2" ;;
                              ^^^
    Error: This expression has type string but an expression was expected of type
            int
 *)
