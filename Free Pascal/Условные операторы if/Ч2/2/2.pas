program CompareTriangles;

var
  A1, B1, F1: Real;
  A2, B2, F2: Real;
  areEqual: Boolean;

begin
  writeln('Введите стороны и угол первого треугольника (A1, B1, F1):');
  readln(A1, B1, F1);
  writeln('Введите стороны и угол второго треугольника (A2, B2, F2):');
  readln(A2, B2, F2);

  areEqual := (((A1 = A2) and (B1 = B2)) or ((A1 = B2) and (B1 = A2))) and (F1 = F2);

  if areEqual then
    writeln('Треугольники равны')
  else
    writeln('Треугольники не равны');
end.
