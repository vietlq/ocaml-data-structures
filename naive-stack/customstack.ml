module type Stack = sig
  type 'a t

  val empty : 'a t

  val isEmpty : 'a t -> bool

  val head : 'a t -> 'a

  val tail : 'a t -> 'a t

  val cons : 'a -> 'a t -> 'a t
end

module CustomStack : Stack = struct
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
end
