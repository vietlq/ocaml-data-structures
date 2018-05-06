module UBS = Unbalanced_set

module MyInt : UBS.ORDERED with type t = int = struct
  type t = int

  let lt (a : t) (b : t) = a < b
end

module X = Unbalanced_set.Make(MyInt)

let s = X.empty ;;

Printf.printf "Check if 1 belongs to s: %b\n" (X.member 1 s) ;;

let s1 = X.insert 1 s ;;

Printf.printf "Check if 1 belongs to s1: %b\n" (X.member 1 s1) ;;

Printf.printf "Check if 2 belongs to s1: %b\n" (X.member 2 s1) ;;
