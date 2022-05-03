(*
     #use "chapter9/exercise-9.5.ml" ;;
*)

(* 目的：整数のリスト lst を受け取って、偶数の要素のみを含むリストを返す関数 even を作成する *)
(* even : int list -> int list *)
let even lst = [ 2 ]

(* 入力データの構造に合わせた match 構文を作成する *)
let even lst =
  match lst with
  | [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest else even rest

(* 再帰関数であるので rec を付与する *)
(* 入力データの構造に合わせた match 構文を作成する *)
let rec even lst =
  match lst with
  | [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest else even rest

(* テスト *)
let test1 = even [] = []
let test2 = even [ 1 ] = []
let test3 = even [ 1; 2 ] = [ 2 ]
let test4 = even [ 1; 2; 3; 4 ] = [ 2; 4 ]
let test5 = even [ 0; 1; 2; 3; 4; 5; 6 ] = [ 0; 2; 4; 6 ]
