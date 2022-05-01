(* 
    #use "chapter7/listing-7.3.ml" ;;

    デザインレシピ
    
    テンプレート
        入力が構造データの場合、その中身を取り出すmatch文を作成する
        テストプログラムを作成して、match文の構文があっていることを確認する
 *)

(* 目的：2つの整数の組 pair を受け取りその要素の和を返す *)
(* まずは関数のヘッダを作成する *)
(* add : int * int -> int *)
let add pair = 0 ;;

let test1 = add (0, 0) = 0 ;;
let test2 = add (3, 5) = 8 ;;
let test3 = add (3, -5) = -2 ;;

(* ここまでできれば、次にmatch文を作成する *)
let add pair = match pair with
    (a, b) -> 0 ;;

let test1 = add (0, 0) = 0 ;;
let test2 = add (3, 5) = 8 ;;
let test3 = add (3, -5) = -2 ;;

(* テンプレートまで作成できれば、関数の中身を作成する *)
let add pair = match pair with
    (a, b) -> a + b ;;

let test1 = add (0, 0) = 0 ;;
let test2 = add (3, 5) = 8 ;;
let test3 = add (3, -5) = -2 ;;
