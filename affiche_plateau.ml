let affiche_plateau(tableau) = 

print_string("   A B C D E F G H I J K L M N O");
print_newline();
for i=0 to 14 do
  if i<9 then print_string(" "^string_of_int(i+1)^" ")
  else print_string(string_of_int(i+1)^" ");
  for j=0 to 14 do
    if tableau.(i).(j) == 3 then print_string("* ")
    else if tableau.(i).(j) ==2 then print_string(". ")
    else print_string("? ")
  done;
  print_newline()
done;
