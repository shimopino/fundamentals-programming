(* 
    #use "chapter5/exercise-5.5.ml" ;;

    目的
        2次方程式 ax2 + bx + x = 0 から判別式 D = b2 - 4ac を計算する関数を作成する

        判別式から解の個数を計算する関数を作成する
 *)
(* habetsusiki : float -> float -> float -> float *)

let hanbetsusiki a b c = b *. b -. 4.0 *. a *. c ;;

let test1 = hanbetsusiki 1.0 5.0 4.0 = 9.0 ;;
let test2 = hanbetsusiki 2.0 (-4.0) 2.0 = 0.0 ;;
let test3 = hanbetsusiki 1.0 2.0 4.0 = -12.0 ;;

let kai_no_kosu a b c = 
    if hanbetsusiki a b c > 0.0 then 2
    else if hanbetsusiki a b c = 0.0 then 1
    else 0 ;;

let test4 = kai_no_kosu 1.0 5.0 4.0 = 2 ;; 
let test5 = kai_no_kosu 2.0 (-4.0) 2.0 = 1 ;;
let test6 = kai_no_kosu 1.0 2.0 4.0 = 0 ;;
