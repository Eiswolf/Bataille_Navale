let distance ((x,y),(nav_x,nav_y)) = 

let nav_x_f = float_of_int(nav_x) in
let nav_y_f = float_of_int(nav_y) in
let x_f = float_of_int(x) in
let y_f = float_of_int(y) in

int_of_float(sqrt((nav_x_f -. x_f)*.(nav_x_f -. x_f)+.(nav_y_f -. y_f)*.(nav_y_f -. y_f)));
