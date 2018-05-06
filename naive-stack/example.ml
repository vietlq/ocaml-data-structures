open Mylist
open Customstack

let cs = CustomStack.empty

let cs1 = CustomStack.cons 1 cs ;;
let cs2 = CustomStack.cons 2 cs1 ;;

assert (CustomStack.get 0 cs1 = 1) ;;
assert (CustomStack.get 0 cs2 = 2) ;;
assert (CustomStack.get 1 cs2 = 1) ;;

(********)

let l = Mylist.empty

let l1 = Mylist.cons 1 l ;;
let l2 = Mylist.cons 2 l1 ;;
