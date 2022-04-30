let kihonkyu = 850 ;;

let jikyu = 950 ;;

let kyuyo = (kihonkyu + 25 * jikyu) 
    + (kihonkyu + 28 * jikyu) 
    + (kihonkyu + 31 * jikyu) ;;

(* 
    以上よりアルバイト代の計算式は以下になる
        f(x) = x * jikyu

    つまり支払う給料の合計金額は以下のようになる
        f(25) + f(28) + f(31)
 *)