program CheckPoint_2;

var
  x, y, R, N, distance: Real;

begin
  WriteLn('Введите радиус круга R:');
  ReadLn(R);
  WriteLn('Введите смещение центра круга N:');
  ReadLn(N);
  WriteLn('Введите координаты точки A(x, y):');
  ReadLn(x, y);

  distance := (x - N)*(x - N) + y*y;

  if distance <= R*R then
    WriteLn('Точка находится внутри круга')
  else
    WriteLn('Точка находится вне круга');
end.