(* 
    #use "chapter4/exercise-4.7.ml" ;;

    目的
        鶴の数 tsuru と亀の数 kame に応じて足の合計本数を算出する関数を作成する

    例
        鶴の数 4 匹と亀の数 5 匹の場合合計本数は 30 本になる
        鶴の数 1 匹と亀の数 5 匹の場合合計本数は 22 本になる
        鶴の数 4 匹と亀の数 1 匹の場合合計本数は 12 本になる
 *)

let tsurukame_no_ashi tsuru kame = tsuru * 2 + kame * 4 ;;

let test1 = tsurukame_no_ashi 4 5 = 28 ;;
let test2 = tsurukame_no_ashi 1 5 = 22 ;;
let test3 = tsurukame_no_ashi 4 1 = 12 ;;