(* #use "chapter5/listing-5.4.ml" ;; *)

(* 
    kihonkyu + x *

    上記の部分を共有で行う給与計算方法だとした場合、重複を排除してみる
 *)

let jikyu = 950 ;;
let yugu_jikyu = 980 ;;
let kihonkyu = 100 ;;

let kyuyo x =
    kihonkyu + x * (if x < 30 then jikyu else yugu_jikyu) ;;

let test1 = kyuyo 25 = 23850 ;;
let test2 = kyuyo 28 = 26700 ;;
let test3 = kyuyo 31 = 30480 ;;