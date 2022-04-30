(* 
    OCamlでは関数定義では複数の引数を指定することもできる
 *)

let g x y = x * x + y * y - 4 ;;

(* 
    val g : int -> int -> int = <fun>

    A -> B -> C
    これは左から順番に結合する
    A -> (B -> C)

    つまり以下のようなことも可能となる
 *)

let first = g 3 ;; (* val first : int -> int = <fun> *)
let second = first 4 ;; (* val second : int = 21 *)