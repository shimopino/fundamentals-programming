(*
    #use "chapter4/exercise-4.6.ml" ;;

    目的
        鶴の数 x に応じて足の本数を返す
        tsuru_ashi : int -> int

    例
        鶴の数が 5 匹の場合、足の本数は 10 本となる
        鶴の数が 1 匹の場合、足の本数は 2 本となる
        鶴の数が 100 匹の場合、足の本数は 200 本となる
 *)
let ashi = 2 ;;

let tsuru_ashi x = x * ashi ;;

let test1 = tsuru_ashi 5 = 10 ;;
let test2 = tsuru_ashi 1 = 2 ;;
let test3 = tsuru_ashi 100 = 200 ;;
