program defChar;
var
  c: Char;

begin
  write('Введите символ: ');
  readln(c);
  
  case C of
    'A'..'Z', 'a'..'z': writeln('Введен символ английского алфавита');
    'А'..'Я', 'а'..'я': writeln('Введен символ русского алфавита');
    '0'..'9': writeln('Введена цифра');
    '*', '/', '^', '+', '-': writeln('Введен арифмитический оператор Pascal');
    else writeln('Введен специальный символ');
  end;
  
  write(c);
end.
