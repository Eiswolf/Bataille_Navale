#use "init_plateau.ml";;
#use "affiche_plateau.ml";;
#use "distance.ml";;
#use "apg.ml";;

let bataille_navale_graphic() =

let (tab,(nav_x,nav_y)) = init_plateau() in
let choix = ref "" in
let nombreCoups = ref 1 in

affiche_plateau_graphic(tab);


graph_set_color(blue);
graph_moveto(35,300);
trace_carre(35,300);
graph_moveto(50,300);
graph_set_color(black);
graph_draw_string(" : cache");

graph_set_color(red);
trace_carre(35,285);
graph_moveto(50,285);
graph_set_color(black);
graph_draw_string(" : touche");

graph_set_color(yellow);
trace_carre(35,270);
graph_moveto(50,270);
graph_set_color(black);
graph_draw_string(" : dans l'eau");

graph_moveto(35,240);
graph_set_color(black);
graph_draw_string("Prochaine cible : ");

choix := read_line();

let choix_x = ref 0 in
let choix_y = ref 0 in

choix_y := int_of_char(!choix.[0])-65;

if string_length(!choix)==2 then choix_x := int_of_string(string_extract(!choix,1,1))-1
else choix_x := int_of_string(string_extract(!choix,1,2))-1;

if tab.(!choix_x).(!choix_y)==1 then tab.(!choix_x).(!choix_y) <- 3
else tab.(!choix_x).(!choix_y) <-2;
clear();
if tab.(!choix_x).(!choix_y)==3 then affiche_plateau(tab);


while(tab.(!choix_x).(!choix_y)<>3) do
  affiche_plateau_graphic(tab);
  nombreCoups := !nombreCoups +1;

  graph_set_color(blue);
  graph_moveto(35,300);
  trace_carre(35,300);
  graph_moveto(50,300);
  graph_set_color(black);
  graph_draw_string(" : cache");

  graph_set_color(red);
  trace_carre(35,285);
  graph_moveto(50,285);
  graph_set_color(black);
  graph_draw_string(" : touche");

  graph_set_color(yellow);
  trace_carre(35,270);
  graph_moveto(50,270);
  graph_set_color(black);
  graph_draw_string(" : dans l'eau");


  graph_set_color(black);
  graph_moveto(35,240);
  graph_draw_string("Distance point precedent : ");
  graph_draw_string(string_of_int(distance((!choix_x,!choix_y),(nav_x,nav_y))));
  graph_draw_string(" ["^(!choix)^"]"); 
  graph_moveto(35,225);
  graph_draw_string("Prochaine cible : ");
  choix := read_line();
  print_newline();
  choix_y := int_of_char(!choix.[0])-65;

  if string_length(!choix)==2 then choix_x := int_of_string(string_extract(!choix,1,1))-1
  else if string_length(!choix)==3 then choix_x := int_of_string(string_extract(!choix,1,2))-1
  else failwith("Erreur lors de la saisie");

  if tab.(!choix_x).(!choix_y)==1 then tab.(!choix_x).(!choix_y) <- 3
  else tab.(!choix_x).(!choix_y) <-2;
  clear()

done; 

affiche_plateau_graphic(tab);

graph_set_color(black);
graph_moveto(35,300);
graph_draw_string("Bravo ! Vous avez termine la partie en "^string_of_int(!nombreCoups)^" coups !");;
