module type Stack = sig
  type 'a t

  val empty : 'a t

  val isEmpty : 'a t -> bool

  val head : 'a t -> 'a

  val tail : 'a t -> 'a t

  val cons : 'a -> 'a t -> 'a t

  val join : 'a t -> 'a t -> 'a t
end

module Mylist : Stack = struct
  type 'a t = 'a list

  let empty = []

  let isEmpty = function | [] -> true | _ -> false

  let head xs = List.hd xs

  let tail xs = List.tl xs

  let cons x xs = x :: xs

  let rec join xs ys = match xs with
    | [] -> ys
    | x :: xs1 -> x :: (join xs1 ys)
end
