let affiche_chaine()=

  for i=0 to 14 do

  graph_moveto(49 + 16*i,625);

  let chaine = (string_make(1,(char_of_int(65+i)))) in
  graph_set_color(black);
  graph_draw_string(chaine)
done;

  for i=0 to 14 do
  
    graph_moveto(27,611 - 16*i);
    if i<9 then graph_draw_string(" "^string_of_int(i+1))
    else graph_draw_string(string_of_int(i+1))
  done;
