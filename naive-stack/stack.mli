module type Stack = sig
  type 'a t

  val empty : 'a t

  val isEmpty : 'a t -> bool

  val head : 'a t -> 'a

  val tail : 'a t -> 'a t

  val cons : 'a -> 'a t -> 'a t

  val join : 'a t -> 'a t -> 'a t

  val suffixes : 'a t -> 'a t t
end
