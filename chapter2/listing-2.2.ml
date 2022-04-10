(* 
    実数の型での演算には、ピリオド（.）を使用する
 *)

2.718 ;;
(* - : float = 2.718 *)

(3.0 +. 5.0) *. 8.0 /. 3.0 ;;
(* - : float = 21.3333333333333321 *)

(* 
    実数では冪乗も定義されている。整数では使用できない
 *)

1.41421356 ** 2.0 ;;
(* - : float = 1.99999999328787381 *)

(* 
    実数と整数では演算を行うことができない
    # 1.41421356 ** 2;;

    Error: This expression has type int but an expression was expected of type
            float
    Hint: Did you mean `2.'?
 *)

(* 
    実数では無限大を使用することもできる
    - 正の無限大: infinity
    - 負の無限大: neg_infinity
 *)

3.0 +. infinity;;
(* - : float = infinity *)

3.0 /. infinity;;
(* - : float = 0. *)

3.0 -. neg_infinity;;
(* - : float = neg_infinity *)

3.0 /. neg_infinity;;
(* - : float = -0. *)