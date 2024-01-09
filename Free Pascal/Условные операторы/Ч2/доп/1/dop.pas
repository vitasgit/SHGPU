program CheckPoint;

var
  x, y, distance: Real;

begin
  WriteLn('Введите координаты точки A(x, y):');
  ReadLn(x, y);

  distance := x*x + y*y;

  if distance <= 100 then
    WriteLn('Точка находится внутри круга')
  else
    WriteLn('Точка находится вне круга');
end.
