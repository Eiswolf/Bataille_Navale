let init_plateau() =

let tableau = matrix_make(15,15,0) in

let x = random_int(15) in
let y = random_int(15) in

tableau.(x).(y) <- 1 ;

(tableau,(x,y));;
