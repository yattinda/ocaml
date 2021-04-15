(*
2 点間 (二次元) の距離を求める distance をカリー化関数で定義
2 点間 (三次元) の距離を求める distance3d をカリー化関数で定義
原点 (0.0, 0.0) との距離 (ベクトルの大きさ) を求める関数 norm
原点 (0.0, 0.0, 0.0) との距離を求める関数 norm3d
*)

let distance (x1, y1) (x2, y2) =
  let dx = x1 -. x2 in
  let dy = y1 -. y2 in
  sqrt((dx *. dx) + (dy *. dy))

let distance3d (x1, y1, z1) (x2, y2, z2) =
  let dx = x1 -. x2 in
  let dy = y1 -. y2 in
  let dz = z1 -. z2 in
  sqrt((dx *. dx) + (dy *. dy) + (dz *. dz))

let norm = distance (0.0, 0.0)

let norm3d ~ distance3d (0.0, 0.0, 0.0)
