(* #use "chapter5/listing-5.6.ml" ;; *)

(* 目的：現在の気温 t から快適度を表す文字列を計算する *)
(* kion : int -> string *)
(* let kion t = "" ;; *)

(* 目的：現在の気温 t から快適度を表す文字列を計算する *)
(* kion : int -> string *)
(* let kion t =
    if t < 15 then "普通"
              else if t <= 25 then "快適"
                              else "普通" ;; *)

(* 目的：現在の気温 t から快適度を表す文字列を計算する *)
(* kion : int -> string *)
(* let kion t = 
    if 15 <= t && t <= 25 then "快適"
                          else "普通" ;; *)

let kaiteki t = 15 <= t && t <= 25 ;;

let test1 = kaiteki  7 = false ;;
let test2 = kaiteki 15 = true ;;
let test3 = kaiteki 20 = true ;;
let test4 = kaiteki 25 = true ;;
let test5 = kaiteki 28 = false ;;

let kion t =
    if kaiteki t then "快適"
                 else "普通" ;;

let test6 = kion  7 = "普通" ;;
let test7 = kion 15 = "快適" ;;
let test8 = kion 20 = "快適" ;;
let test9 = kion 25 = "快適" ;;
let test10 = kion 28 = "普通" ;;
