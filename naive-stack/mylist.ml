module Mylist : Stack.Stack = struct
  type 'a t = 'a list

  let empty = []

  let isEmpty = function | [] -> true | _ -> false

  let head xs = List.hd xs

  let tail xs = List.tl xs

  let cons x xs = x :: xs

  let rec join xs ys = match xs with
    | [] -> ys
    | x :: xs1 -> x :: (join xs1 ys)

  let rec suffixes xs = match xs with
    | [] -> [[]]
    | _ :: xs1 as xs -> xs :: (suffixes xs1)

  let update idx v xs =
    let rec aux idx v xs = match idx, xs with
      | _, [] -> failwith "Empty"
      | 0, _ :: xs1 -> v :: xs1
      | idx, x :: xs1 -> x :: (aux (idx - 1) v xs1)
    in
    if idx < 0 then failwith "Invalid index"
    else aux idx v xs

  let get idx xs =
    let rec aux idx xs = match idx, xs with
      | _, [] -> failwith "Empty"
      | 0, x :: _ -> x
      | idx, _ :: xs1 -> aux (idx - 1) xs1
    in
    if idx < 0 then failwith "Invalid index"
    else aux idx xs
end
