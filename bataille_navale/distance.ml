let distance ((x,y),(nav_x,nav_y)) = 

let nav_x_f = float_of_int(nav_x) in
let nav_y_f = float_of_int(nav_y) in
let x_f = float_of_int(x) in
let y_f = float_of_int(y) in


if (abs(nav_x-x)==1) && (abs(nav_y-y)==0) then 1
else if (abs(nav_x-x)==0) && (abs(nav_y-y)==1) then 1
else
begin
if (((int_of_float(sqrt((nav_x_f -. x_f)*.(nav_x_f -. x_f)+.(nav_y_f -. y_f)*.(nav_y_f -. y_f))))*100000) ==  int_of_float(sqrt((nav_x_f -. x_f)*.(nav_x_f -. x_f)+.(nav_y_f -. y_f)*.(nav_y_f -. y_f))*.100000.)) then int_of_float(sqrt((nav_x_f -. x_f)*.(nav_x_f -. x_f)+.(nav_y_f -. y_f)*.(nav_y_f -. y_f)))
else int_of_float(sqrt((nav_x_f -. x_f)*.(nav_x_f -. x_f)+.(nav_y_f -. y_f)*.(nav_y_f -. y_f)))+1
end;

