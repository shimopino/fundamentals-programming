(* 
    OCamlでは真偽値は（ true ）と（ false ）で表現する
 *)

true ;;
(* - : bool = true *)

false ;;
(* - : bool = false *)

(* 
    論理演算では以下の記号を使用する
    - AND : &&
    - OR  : ||
    - NOT : not
 *)

true && true ;;
(* - : bool = true *)

true && false ;;
(* - : bool = false *)

true || false ;;
(* - : bool = true *)

false || false ;;
(* - : bool = false *)

not true ;;
(* - : bool = false *)

not false ;;
(* - : bool = true *)

(* 
    論理演算の優先順位は下記のようになっている

    not > AND > OR

    そのため最後の演算は
    not (false || not false && not false) ;;

    まず not の演算が優先され
    not (false || (not false) && (not false)) ;;

    次に　AND の演算が優先され
    not (false || ((not false) && (not false))) ;;

    最後に　OR に関する演算が実行される
 *)

not (false || not false && not false) ;;
(* - : bool = false *)

(* 
    比較演算子も以下のものが定義されている
    - 等しい    : =
    - 等しくない : <>
    - より大きい : >
    - より小さい : <
    - 以上     : >=
    - 以下     : <=
 *)

2 < 3;;
(* - : bool = true *)

2 < 3 && 2.0 >= 3.0 ;;
(* - : bool = false *)

2 < 3 || 2.0 = 3.0 ;;
(* - : bool = true *)

not (3 < 2) ;;
(* - : bool = true *)

(* 
    ただし比較演算子は同じ　「型」　同士の比較のみしか対応していない

    # 2 < 3.0 ;;
    Error: This expression has type float but an expression was expected of type
         int
 *)