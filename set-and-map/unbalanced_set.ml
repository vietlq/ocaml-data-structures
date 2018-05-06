module type ORDERED = sig
  type t

  val lt : t -> t -> bool

  (* Consider adding gt and eq to make this totally ordered *)
end

module type SET = sig
  type elem

  type t

  val empty : t

  val insert : elem -> t -> t

  val member : elem -> t -> bool
end

module Make(Elem : ORDERED) : SET with type elem = Elem.t = struct
  type elem = Elem.t

  type t = Nil | Tree of t * elem * t

  let empty = Nil

  let rec insert (e : elem) t = match t with
    | Nil -> Tree (Nil, e, Nil)
    | Tree (left, root, right) as orig ->
      if Elem.lt e root then Tree (insert e left, root, right)
      else if Elem.lt root e then Tree (left, root, insert e right)
      else orig

  let rec member (e : elem) t = match t with
    | Nil -> false
    | Tree (left, root, right) ->
      if Elem.lt e root then member e left
      else if Elem.lt root e then member e right
      else true
end
