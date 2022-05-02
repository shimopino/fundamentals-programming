(* 
    #use "chapter8/listing-8.4.ml" ;;

    8.5節のユーザー定義までコンパイルエラーが発生する
 *)

type gakusei_t = { 
  namae : string; 
  tensuu : int; 
  seiseki : string; 
} ;; 

let asai = { namae = "asai"; tensuu = 70; seiseki = "B"; } ;;

asai.namae ;;
asai.tensuu ;;
asai.seiseki ;;
