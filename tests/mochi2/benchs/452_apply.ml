(*
USED: PLDI2011 as apply
*)

let apply (f:int->unit) (x:int) = f x
let g (y:int) (z:int) = assert (y=z)
let rec k n = apply (g n) n; k(n+1)
let main i = k 0
