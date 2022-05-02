(* 
    #use "chapter9/exercise-9.2.ml" ;;
 *)

#use "../modules/person.ml" ;;

let person1 = {
    name = "下川";
    shincho = 1.72;
    taiju = 60.0;
    tsuki = 6;
    hi = 10;
    ketsueki = "A";
} ;;

let person2 = {
    name = "宮原";
    shincho = 1.63;
    taiju = 55.0; 
    tsuki = 6;
    hi = 30;
    ketsueki = "B"
} ;;

person1 :: person2 :: [] ;;
