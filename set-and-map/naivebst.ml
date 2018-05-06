module type SET = sig
  type 'a t

  val empty : 'a t

  val insert : 'a -> 'a t -> 'a t

  val member : 'a -> 'a t -> bool
end

module NaiveBst : SET = struct
  type 'a t = Nil | Tree of 'a t * 'a * 'a t

  let empty = Nil

  let rec insert e t = match t with
    | Nil -> Tree (Nil, e, Nil)
    | Tree (left, root, right) as orig ->
      if e < root then Tree (insert e left, root, right)
      else if root < e then Tree (left, root, insert e right)
      else orig

  let rec member e t = match t with
    | Nil -> false
    | Tree (left, root, right) ->
      if e < root then member e left
      else if root < e then member e right
      else true
end
