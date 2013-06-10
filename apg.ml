#use "trace_carre.ml";;
#use "affiche_chaine.ml";;

let affiche_plateau_graphic(tab) =

affiche_chaine();
print_newline();
for i=0 to 14 do
 
  for j=0 to 14 do
    if tab.(i).(j)==3 then graph_set_color(red)
    else if tab.(i).(j)==2 then graph_set_color(yellow)
    else graph_set_color(blue);
    trace_carre((45+j*16),(610-i*16))
  done
done;
