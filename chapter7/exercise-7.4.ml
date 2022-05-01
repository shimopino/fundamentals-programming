(* 
    #use "chapter7/exercise-7.4.ml" ;;
 *)

(* 目的：組で表された平面座標をふたつ受け取ったら、その中点の座標を返す *) 
(* chuten : float * float -> float * float -> float * float *)
let chuten point1 point2 = match point1 with
    (x1, y1) -> (match point2 with
        (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0)) ;;

let test1 = chuten (0.0, 0.0) (1.0, 2.0) = (0.5, 1.0) ;;
let test2 = chuten (2.3, 5.1) (7.6, 1.7) = (4.95, 3.4) ;;
let test3 = chuten (-3.8, -2.4) (3.4, -1.2) = (-0.2, -1.8) ;;
