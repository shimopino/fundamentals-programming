(* 
    #use "chapter7/exercise-7.1.ml" ;;
 *)

(* val goukei_to_heikin : int -> int -> int -> int -> int -> int * int = <fun> *)
let goukei_to_heikin kokugo sugaku eigo rika shakai =
    (
        kokugo + sugaku + eigo + rika + shakai,
        (kokugo + sugaku + eigo + rika + shakai) / 5
    ) ;;

let test1 = goukei_to_heikin 80 100 90 85 75 = (430, 86) ;;
let test2 = goukei_to_heikin 90 70 95 65 90 = (410, 82) ;;
let test3 = goukei_to_heikin 60 50 70 55 65 = (300, 60) ;;