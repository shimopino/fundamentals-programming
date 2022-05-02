(* 
    #use "chapter8/exercise-8.2.ml" ;;
 *)

type okozukai_t = { 
  mono : string;	(* 買ったものの名前 *) 
  nedan : int;		(* 値段 *) 
  basho : string;	(* 買った場所 *) 
  hizuke : string;	(* 買った日付け *) 
} ;;
 
let item1 = { 
  mono = "プログラミングの基礎"; 
  nedan = 2415; 
  basho = "大学生協書籍部"; 
  hizuke = "2007/3/20"; 
} ;;
 
let item2 = { 
  mono = "午後の紅茶"; 
  nedan = 150; 
  basho = "ローソン"; 
  hizuke = "2007/3/22"; 
} ;;
 
let item3 = { 
  mono = "置き時計"; 
  nedan = 1200; 
  basho = "イトーヨーカドー"; 
  hizuke = "2007/3/28"; 
} ;;

