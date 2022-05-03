(*
     #use "chapter9/exercise-9.7.ml" ;;
*)
#use "modules/person.ml"

let lst1 = []

let lst2 =
  [
    {
      name = "shimokawa";
      shincho = 1.72;
      taiju = 70.0;
      tsuki = 6;
      hi = 10;
      ketsueki = "B";
    };
  ]

let lst3 =
  [
    {
      name = "shimokawa";
      shincho = 1.72;
      taiju = 70.0;
      tsuki = 6;
      hi = 10;
      ketsueki = "B";
    };
    {
      name = "asai";
      shincho = 1.80;
      taiju = 60.0;
      tsuki = 7;
      hi = 1;
      ketsueki = "A";
    };
  ]

let lst4 =
  [
    {
      name = "shimokawa";
      shincho = 1.72;
      taiju = 70.0;
      tsuki = 6;
      hi = 10;
      ketsueki = "B";
    };
    {
      name = "asai";
      shincho = 1.80;
      taiju = 60.0;
      tsuki = 7;
      hi = 1;
      ketsueki = "A";
    };
    {
      name = "kasai";
      shincho = 1.60;
      taiju = 50.0;
      tsuki = 8;
      hi = 30;
      ketsueki = "A";
    };
  ]

(* 目的：person_t 型のリスト lst を受け取って、血液型がAの人の人数を数える関数 count_ketsueki_A *)
(* count_ketsueki_A : person_t list -> int *)
let count_ketsueki_A lst = 0

(* 入力のリストに従うパターンマッチを作成する *)
let count_ketsueki_A lst = match lst with [] -> 0 | first :: rest -> 0

(* 各要素の構造に従うパターンマッチを作成する *)
let count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | { name = n; shincho = s; taiju = t; tsuki; hi; ketsueki = k } :: rest -> 0

(* 分岐の条件に従う if 文を作成する *)
let count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | { name = n; shincho = s; taiju = t; tsuki; hi; ketsueki = k } :: rest ->
      if k = "A" then 0 else 0

(* 人数を数えるための関数の中身を実装する *)
let count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | { name = n; shincho = s; taiju = t; tsuki; hi; ketsueki = k } :: rest ->
      if k = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

(* 最後に再帰関数である rec を付与する *)
let rec count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | { name = n; shincho = s; taiju = t; tsuki; hi; ketsueki = k } :: rest ->
      if k = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 0
let test3 = count_ketsueki_A lst3 = 1
let test4 = count_ketsueki_A lst4 = 2
