(* 
    #use "chapter8/exercise-8.1.ml" ;;
 *)

type book_t = {
    title : string;
    author : string;
    publisher : string;
    price : int;
    isbn : string;
} ;;

let book1 = {
    title = "プログラミングの基礎";
    author = "浅井健一";
    publisher = "サイエンス社";
    price = 2900;
    isbn = "978-4-7819-1160-1";
} ;;

let book2 = { 
  title = "アルゴリズムとデータ構造"; 
  author = "石畑清"; 
  publisher = "岩波書店"; 
  price = 3900; 
  isbn = "4-00-010343-1"; 
} ;;
 
let book3 = { 
  title = "プログラミング言語 Standard ML 入門"; 
  author = "大堀淳"; 
  publisher = "共立出版"; 
  price = 3800; 
  isbn = "4-320-12024-8"; 
} ;;
