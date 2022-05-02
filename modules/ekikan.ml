type ekikan_t = {
    kiten : string;     (* 起点の駅名 *)
    shuten : string;    (* 終点の駅名 *)
    keiyu : string;     (* 経由する路線名 *)
    kyori : float;      (* ２駅間の距離[km] *)
    jikan : int;        (* 所要時間[分] *)
}