#use "init_plateau.ml";;
#use "distance.ml";;
#use "apg.ml";;

let bataille_navale() =

let (tab,(nav_x,nav_y)) = init_plateau() in
let choix = ref "" in
let nombreCoups = ref 1 in

affiche_plateau(tab);
print_newline();
print_newline();



print_string("Prochaine cible : ");
choix := read_line();
print_newline();
print_newline();
let choix_x = ref 0 in
let choix_y = ref 0 in

choix_y := int_of_char(!choix.[0])-65;

if string_length(!choix)==2 then choix_x := int_of_string(string_extract(!choix,1,1))-1
else if string_length(!choix)==3 then choix_x := int_of_string(string_extract(!choix,1,2))-1
else failwith("Erreur lors de la saisie");

if tab.(!choix_x).(!choix_y)==1 then tab.(!choix_x).(!choix_y) <- 3
else tab.(!choix_x).(!choix_y) <-2;
clear();
if tab.(!choix_x).(!choix_y)==3 then affiche_plateau(tab);


while(tab.(!choix_x).(!choix_y)<>3) do
  affiche_plateau(tab);
  nombreCoups := !nombreCoups +1;
  print_newline();
  print_string("Distance point precedent : ");
  print_int(distance((!choix_x,!choix_y),(nav_x,nav_y)));
  print_string(" ["^(!choix)^"]");
  print_newline();
  print_string("Prochaine cible : ");
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

print_string("Bravo ! Vous avez terminé la partie en "^string_of_int(!nombreCoups)^" coups !");;
