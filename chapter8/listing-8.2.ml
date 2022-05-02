(* 
    #use "chapter8/listing-8.2.ml" ;;

    8.5節のユーザー定義までコンパイルエラーが発生する
 *)

type gakusei_t = { 
  namae : string; 
  tensuu : int; 
  seiseki : string; 
} ;; 

{ namae = "asai"; tensuu = 70; seiseki = "B" } ;;
