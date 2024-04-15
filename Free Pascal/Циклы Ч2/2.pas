program sumSeries;

var
    i, N: Integer;
    sum: Real;

begin
    write('Введите N: ');
    readln(N);

    sum := 0;
    for i := 0 to N do
        sum := sum + 1 / (2*i + 1);

    writeln('Сумма ряда: ', sum);
end.
