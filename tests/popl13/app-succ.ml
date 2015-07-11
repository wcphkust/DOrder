let succ (b:int) (f:int->unit) x = f (x + 1)

let rec app (b:int) (f:int->unit) x = 
	if Random.bool () then app (b-1) (succ (b-1) f) (x - 1) else f x
	
let check (x:int) (y:int) = assert (x <= y)

let main n = app n (check n) n

let _ = main 5