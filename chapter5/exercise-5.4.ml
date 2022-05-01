(* 
    #use "chapter5/exercise-5.4.ml" ;;

    目的
        2次方程式 ax2 + bx + x = 0 から判別式 D = b2 - 4ac を計算する関数を作成する
 *)
(* habetsusiki : float -> float -> float -> float *)

let hanbetsusiki a b c = b *. b -. 4.0 *. a *. c ;;

let test1 = hanbetsusiki 1.0 5.0 4.0 = 9.0 ;;
let test2 = hanbetsusiki 2.0 (-4.0) 2.0 = 0.0 ;;
let test3 = hanbetsusiki 1.0 2.0 4.0 = -12.0 ;;