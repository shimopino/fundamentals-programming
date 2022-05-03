(*
     #use "chapter9/exercise-9.6.ml" ;;
*)

(* 目的：文字列のリスト lst を受け取って、全ての要素を結合させた文字列を返す関数 concat *)
(* concat : string list -> string *)
let concat lst = ""

(* データ構造に従う match 構文を作成する *)
let concat lst =
  match lst with [] -> "" | first :: rest -> first ^ concat rest

(* 再帰関数であることを示す rec を付与する *)
let rec concat lst =
  match lst with [] -> "" | first :: rest -> first ^ concat rest

(* テスト *)
let test1 = concat [] = ""
let test2 = concat [ "春" ] = "春"
let test3 = concat [ "春"; "夏"; "秋"; "冬" ] = "春夏秋冬"
