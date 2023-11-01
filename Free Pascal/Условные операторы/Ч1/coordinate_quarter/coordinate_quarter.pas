program coordinate_quarter;

var
    x, y: Real;

begin
    write('Введите координату x точки A: ');
    readln(x);
    write('Введите координату y точки A: ');
    readln(y);

    if (x = 0) and (y = 0) then
        writeln('Точка A находится в начале координат')

    else if (x = 0) then
        writeln('Точка A находится на оси Y')

    else if (y = 0) then
        writeln('Точка A находится на оси X')

    else if (x > 0) and (y > 0) then
        writeln('Точка А находится в I четверти')

    else if (x < 0) and (y > 0) then
        writeln('Точка А находится во II четверти.')

    else if (x < 0) and (y < 0) then
        writeln('Точка А находится в III четверти')

    else
        writeln('Точка А находится в IV четверти');

    readln;
end.