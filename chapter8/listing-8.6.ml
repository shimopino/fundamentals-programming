(* 
    #use "chapter8/listing-8.6.ml" ;;

    デザインレシピ

    データ定義
        入力データの型、出力データの型を考える
        構造を持っている場合は、その型を定義する
        意味のある塊に対して型を定義することで安全にプログラミングを行う

    テンプレート
        入力（の一部）が構造データの場合は、その中身を取り出す match 文を作る
        テストプログラムを実行して、match 文の構造があっているのかを確認する
 *)

(* 関数 hyouka は学生のデータを受け取る。そこで学生の型を作成する *)
type gakusei_t = {
    namae : string;     (* 名前 *)
    tensuu : int;       (* 点数 *)
    seiseki : string;   (* 成績 *)
}

(* 目的：学生のデータ gakusei を受け取り、生成のついたデータを返す *)
(* hyouka : gakusei_t -> gakusei_t *)
let hyouka gakusei = { namae = ""; tensuu = 0; seiseki = ""; }

(* 次にレコードの中身を取り出すために match 構文を作成する *)
let hyouka gakusei = match gakusei with
    { namae = n; tensuu = t; seiseki = s; } ->
        { namae = ""; tensuu = 0; seiseki = ""; }

(* 次に条件分岐の場合を作成する *)
let hyouka gakusei = match gakusei with
    { namae = n; tensuu = t; seiseki = s; } ->
        if t >= 80 then         { namae = ""; tensuu = 0; seiseki = ""; }
        else if t >= 70 then    { namae = ""; tensuu = 0; seiseki = ""; }
        else if t >= 60 then    { namae = ""; tensuu = 0; seiseki = ""; }
        else                    { namae = ""; tensuu = 0; seiseki = ""; }

(* 最後に関数の中身を作成する *)
let hyouka gakusei = match gakusei with
    { namae = n; tensuu = t; seiseki = s; } ->
        if t >= 80 then         { namae = n; tensuu = t; seiseki = "A"; }
        else if t >= 70 then    { namae = n; tensuu = t; seiseki = "B"; }
        else if t >= 60 then    { namae = n; tensuu = t; seiseki = "C"; }
        else                    { namae = n; tensuu = t; seiseki = "D"; }


let test1 = hyouka { namae = "asai"; tensuu = 90; seiseki = ""; }
                 = { namae = "asai"; tensuu = 90; seiseki = "A"; }
let test2 = hyouka { namae = "asai"; tensuu = 80; seiseki = ""; }
                 = { namae = "asai"; tensuu = 80; seiseki = "A"; }
let test3 = hyouka { namae = "asai"; tensuu = 75; seiseki = ""; }
                 = { namae = "asai"; tensuu = 75; seiseki = "B"; }
let test4 = hyouka { namae = "asai"; tensuu = 70; seiseki = ""; }
                 = { namae = "asai"; tensuu = 70; seiseki = "B"; }
let test5 = hyouka { namae = "asai"; tensuu = 65; seiseki = ""; }
                 = { namae = "asai"; tensuu = 65; seiseki = "C"; }
let test6 = hyouka { namae = "asai"; tensuu = 60; seiseki = ""; }
                 = { namae = "asai"; tensuu = 60; seiseki = "C"; }
let test6 = hyouka { namae = "asai"; tensuu = 55; seiseki = ""; }
                 = { namae = "asai"; tensuu = 55; seiseki = "D"; }
