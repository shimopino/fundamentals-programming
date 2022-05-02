(* 
    #use "chapter9/listing-9.1.ml" ;; 

    リスト
        - 空リスト [] はリストである
        - first が要素、rest がリストなら first :: rest もリストである

    これは定義自体が再帰的な構造を有している
 *)

2 :: 1 :: [] ;;
(* - : int list = [2; 1] *)
