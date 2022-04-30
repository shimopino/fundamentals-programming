(* 
    時給は850円、1年ごとに時給が100円ずつ増える
    始めてからの年数とその月の勤務時間から給与を計算する関数を作成する
 *)

let jikyu = 850 ;;
let kyuyo year time = (jikyu + year * 100) * time ;;

(* 
    名前を受け取って適当な挨拶を返す関数を作成する
 *)
let jikoshokai name = "こんにちわ " ^ name ^ " さん" ;; 

(* 
    身長（m）から標準体重（2乗して２２をかける）を算出する関数を作成する
 *)
let hyojun_taiju height = (height ** 2.0) *. 22.0 ;;

(* 
    身長（m）と体重（kg）からBMI（体重を身長の2乗でわる）を算出する関数を作成する
 *)
let bmi height weight = weight /. height ** 2.0 ;;