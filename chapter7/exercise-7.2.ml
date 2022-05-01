(* 
    #use "chapter7/exercise-7.2.ml" ;;
 *)

(* 目的：名前と生成の組みを受け取ると、その評価の文章を返す *)
(* string * string -> string *)
let seiseki pair = match pair with
    (name, score) -> name ^ "さんの評価は" ^ score ^ "です" ;;

let test1 = seiseki ("下川", "普通") = "下川さんの評価は普通です" ;;
let test2 = seiseki ("田中", "優秀") = "田中さんの評価は優秀です" ;;
let test3 = seiseki ("佐藤", "改善余地あり") = "佐藤さんの評価は改善余地ありです" ;;
