program TriangleType;
var
  X, Y, Z: Integer;

begin
  writeln('Введите стороны треугольника (X, Y, Z):');
  readln(X, Y, Z);

  if (X + Y > Z) and (X + Z > Y) and (Y + Z > X) then
  begin
    writeln('Треугольник существует.');

    if (X = Y) and (Y = Z) then
      writeln('Треугольник равносторонний')
    else if (X * X + Y * Y = Z * Z) or (X * X + Z * Z = Y * Y) or (Y * Y + Z * Z = X * X) then
      writeln('Треугольник прямоугольный')
    else if (X = Y) or (X = Z) or (Y = Z) then
      writeln('Треугольник равнобедренный')
    else
      writeln('Треугольник разносторонний');
  end
  else
    writeln('Такого треугольника не существует.');
end.
