(*
     #use "chapter9/listing-9.4.ml" ;;
*)

(*
   int list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest

   rest が事故参照というケース
*)

(* 目的：受け取ったリスト lst に 0 が含まれていることを確認する *)
(* contain_zero : int list -> bool *)
let contain_zero lst = false

(* 次にリストをパターンマッチで中身を取り出す *)
let contain_zero lst =
  match lst with
  | [] -> false
  | first :: rest -> if first = 0 then false else false

(* 最後に再帰的な関数呼び出しを行う *)
let rec contain_zero lst =
  match lst with
  | [] -> false
  | first :: rest -> if first = 0 then true else contain_zero rest

let test1 = contain_zero [] = false
let test2 = contain_zero [ 0; 2 ] = true
let test3 = contain_zero [ 1; 2 ] = false
let test4 = contain_zero [ 1; 2; 3; 0; 5; 6; 7 ] = true
let test5 = contain_zero [ 1; 2; 3; 4; 5; 6; 7 ] = false
