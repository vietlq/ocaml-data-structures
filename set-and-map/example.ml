module MyInt : Unbalanced_set.ORDERED = struct
  type t = int

  let lt (a : t) (b : t) = a < b
end

module X = Unbalanced_set.Make(MyInt)

let s = X.empty ;;

Printf.printf "Check if 1 belongs to s: %b" (X.member 1 s) ;;

(*
let s1 = X.insert 1 s ;;

print_bool @@ X.member 1 s1 ;;

print_bool @@ X.member 2 s1 ;;
*)
