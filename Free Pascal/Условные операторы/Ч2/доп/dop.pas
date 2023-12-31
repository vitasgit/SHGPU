program CheckPointInsideCircle;
uses crt;

var
  x, y, distance: Real;

begin
  clrscr;
  WriteLn('Введите координаты точки A(x, y):');
  ReadLn(x, y);

  distance := x * x + y * y;  // Расчет квадрата расстояния до начала координат

  if distance <= 100 then  // Сравниваем с квадратом радиуса круга
    WriteLn('Точка находится внутри круга или на его границе.')
  else
    WriteLn('Точка находится вне круга.');
end.
