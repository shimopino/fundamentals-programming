(*
     #use "chapter9/listing-9.6.ml" ;;

     複雑なデータ（レコードなど）を取り扱う場合の再帰
*)

(* 学生一人分のデータ *)
type gakusei_t = { namae : string; tensuu : int; seiseki : string }

(*
   gakusei_t list は
   - []             空リスト
   - first :: rest  最初の要素は first で残りのリストが rest
*)

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [ { namae = "asai"; tensuu = 70; seiseki = "B" } ]

let lst3 =
  [
    { namae = "asai"; tensuu = 70; seiseki = "B" };
    { namae = "kaneko"; tensuu = 85; seiseki = "A" };
  ]

let lst4 =
  [
    { namae = "asai"; tensuu = 70; seiseki = "B" };
    { namae = "kaneko"; tensuu = 85; seiseki = "A" };
    { namae = "yoshida"; tensuu = 80; seiseki = "A" };
  ]

(* 目的：学生のリスト lst を受け取って、成績が "A" の人数を返す関数 count_A *)
(* count_A : gakusei_t list -> int *)
let count_A lst = 0

(* まずはリストの要素を取得するためのパターンマッチを作成する *)
let count_A lst = match lst with [] -> 0 | first :: rest -> 0

(* 要素の学生データを操作するためのパターンマッチを作成する *)
let count_A lst =
  match lst with
  | [] -> 0
  | first :: rest -> (
      match first with { namae = n; tensuu = t; seiseki = s } -> 0)

(* レコードに対してのパターンマッチでは、埋め込み型も使用できる *)
let count_A lst =
  match lst with [] -> 0 | { namae = n; tensuu = t; seiseki = s } :: rest -> 0

(* 分岐に応じた if 文を作成する *)
let count_A lst =
  match lst with
  | [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest -> if s = "A" then 0 else 0

(* 人数を数えるための関数の中身を実装する *)
let count_A lst =
  match lst with
  | [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest ->
      if s = "A" then 1 + count_A rest else count_A rest

(* 再帰関数であるので、rec を付与する *)
let rec count_A lst =
  match lst with
  | [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest ->
      if s = "A" then 1 + count_A rest else count_A rest

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2
