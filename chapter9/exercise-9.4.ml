(*
     #use "chapter9/exercise-9.4.ml" ;;
*)

(* 目的：整数のリスト lst を受け取って要素の数を返す関数 length を作成する *)
(* length : int list -> int *)
let length lst = 0

(* 入力の型に応じた match 構文を作成する *)
let length lst = match lst with [] -> 0 | first :: rest -> 1 + length rest

(* 再帰関数であるため rec を変数宣言に付与する *)
let rec length lst = match lst with [] -> 0 | first :: rest -> 1 + length rest

(* テスト *)
let test1 = length [] = 0
let test2 = length [ 1 ] = 1
let test3 = length [ 1; 2; 3; 4; 5 ] = 5;;

(* - int = 3 *)
List.length [ 1; 2; 3 ]
