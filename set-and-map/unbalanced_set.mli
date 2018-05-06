module type ORDERED = sig type t val lt : t -> t -> bool end
module type SET =
  sig
    type elem
    type t
    val empty : t
    val insert : elem -> t -> t
    val member : elem -> t -> bool
  end
module Make(Elem : ORDERED) : SET with type elem = Elem.t
