module type SET =
  sig
    type 'a t
    val empty : 'a t
    val insert : 'a -> 'a t -> 'a t
    val member : 'a -> 'a t -> bool
  end
module NaiveBst : SET
