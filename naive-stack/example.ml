module ML = Mylist.Mylist

module CS = Customstack.CustomStack

let cs = CS.empty

let cs1 = CS.cons 1 cs ;;
let cs2 = CS.cons 2 cs1 ;;

assert (CS.get 0 cs1 = 1) ;;
assert (CS.get 0 cs2 = 2) ;;
assert (CS.get 1 cs2 = 1) ;;

(********************************)

let l = ML.empty

let l1 = ML.cons 1 l ;;
let l2 = ML.cons 2 l1 ;;

assert (ML.get 0 l1 = 1) ;;
assert (ML.get 0 l2 = 2) ;;
assert (ML.get 1 l2 = 1) ;;
