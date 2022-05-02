(* 
    #use "chapter8/exercise-8.6.ml" ;;
 *)

type ekimei_t = {
    kanji : string;     (* 漢字の駅名 *)
    kana : string;      (* 読み *)
    romaji : string;    (* ローマ字 *)
    shozoku : string;   (* 所属路線名 *)
} ;;

let ekimei1 = { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸の内線"; } ;;

let hyoji ekimei = match ekimei with
    { kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku; } ->
        shozoku ^ "、" ^ kanji ^ "(" ^ kana ^ ")" ;;

let test1 = hyoji ekimei1 = "丸の内線、茗荷谷(みょうがだに)" ;;
