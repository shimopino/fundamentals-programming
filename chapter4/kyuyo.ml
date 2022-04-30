(* 目的：　働いた時間 x に応じたアルバイト代を計算する *)
(* kyuyo : int -> int *)
let kyuyo x = 950 * x + 100 ;;

kyuyo 25 ;;

let test1 = kyuyo 25 = 23850 ;;
let test2 = kyuyo 28 = 26700 ;;
let test3 = kyuyo 31 = 29550 ;;

(* ファイルの実行 *)
(* #use "chapter4/kyuyo.ml" ;; *)