(* 
    #use "chapter8/exercise-8.4.ml" ;;
 *)

type person_t = { 
  name : string;	(* 名前 *) 
  shincho : float;	(* 身長 *) 
  taiju : float;	(* 体重 *) 
  tsuki : int;		(* 誕生月 *) 
  hi : int;		(* 誕生日 *) 
  ketsueki : string;	(* 血液型 *) 
} ;;

let ketsueki_hyoji person = match person with
    { name = n; shincho = s; taiju = t; tsuki = tsuki; hi = hi; ketsueki = k } ->
        n ^ "さんの血液型は" ^ k ^ "型です。" ;;

let person1 = { name = "A"; shincho = 170.0; taiju = 60.0; tsuki = 6; hi = 10; ketsueki = "A" } ;;
let test1 = ketsueki_hyoji person1 = "Aさんの血液型はA型です。" ;;
