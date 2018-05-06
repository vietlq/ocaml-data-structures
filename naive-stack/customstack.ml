module CustomStack : Stack.Stack = struct
  type 'a t = Nil | Cons of 'a * 'a t

  let empty = Nil

  let isEmpty = function | Nil -> true | _ -> false

  let head xs = match xs with
    | Nil -> failwith "Empty"
    | Cons (x, xs) -> x

  let tail xs = match xs with
    | Nil -> failwith "Empty"
    | Cons (x, xs) -> xs

  let cons x xs = Cons (x, xs)

  let rec join xs ys = match xs with
    | Nil -> ys
    | Cons (x, xs1) -> Cons (x, join xs1 ys)

  let rec suffixes xs = match xs with
    | Nil -> Nil
    | Cons (_, xs1) as xs -> Cons (xs, suffixes xs1)

  let update idx v xs =
    let rec aux idx v xs = match idx, xs with
      | _, Nil -> failwith "Empty"
      | 0, Cons (_, xs1) -> Cons (v, xs1)
      | idx, Cons (x, xs1) -> Cons (x, aux (idx - 1) v xs1)
    in
    if idx < 0 then failwith "Invalid index"
    else aux idx v xs
end
