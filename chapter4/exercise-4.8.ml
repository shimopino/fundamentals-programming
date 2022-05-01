(* 
    #use "chapter4/exercise-4.8.ml" ;;

    目的
        鶴と亀の数 total と足の数の合計 ashi に応じて鶴の数を返す関数を作成する

    例
        鶴と亀の数が 1 匹であり足の数の合計が 4 本の場合、鶴の数は 0 匹となる 
        鶴と亀の数が 1 匹であり足の数の合計が 2 本の場合、鶴の数は 1 匹となる 
        鶴と亀の数が 5 匹であり足の数の合計が 16 本の場合、鶴の数は 2 匹となる 
 *)

let tsurukame total ashi = (4 * total - ashi) / 2 ;;

let test1 = tsurukame 1 4 = 0 ;;
let test2 = tsurukame 1 2 = 1 ;;
let test3 = tsurukame 5 16 = 2 ;;