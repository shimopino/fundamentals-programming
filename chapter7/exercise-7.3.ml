(* 
    #use "chapter7/exercise-7.3.ml" ;;
 *)

(* 目的：二次元平面乗の座標を受け取っって、x軸について対象な座標を取得する *)
(* int * int -> int * int *)
let taisho_x point = (0.0, 0.0) ;;

let test1 = taisho_x (2.0, 8.0) = (2.0, -8.0) ;;
let test2 = taisho_x (-2.0, 8.0) = (-2.0, -8.0) ;;
let test3 = taisho_x (2.0, -8.0) = (2.0, 8.0) ;;
let test4 = taisho_x (-2.0, -8.0) = (-2.0, 8.0) ;;

(* パターンマッチ文のみを作成する *)
let taisho_x point = match point with
    (x, y) -> (0.0, 0.0) ;;

let test1 = taisho_x (2.0, 8.0) = (2.0, -8.0) ;;
let test2 = taisho_x (-2.0, 8.0) = (-2.0, -8.0) ;;
let test3 = taisho_x (2.0, -8.0) = (2.0, 8.0) ;;
let test4 = taisho_x (-2.0, -8.0) = (-2.0, 8.0) ;;

(* 最後に関数の中身を作成する *)
let taisho_x point = match point with
    (x, y) -> (x, -. y) ;;

let test1 = taisho_x (2.0, 8.0) = (2.0, -8.0) ;;
let test2 = taisho_x (-2.0, 8.0) = (-2.0, -8.0) ;;
let test3 = taisho_x (2.0, -8.0) = (2.0, 8.0) ;;
let test4 = taisho_x (-2.0, -8.0) = (-2.0, 8.0) ;;
