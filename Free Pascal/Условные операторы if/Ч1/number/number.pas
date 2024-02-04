program number;

var
    num: Integer;

begin
    write('Введите число: ');
    readln(num);

    if (num = 0) then
        writeln('Ошибка. Число равно нулю')
    else if (num > 999) then
        writeln('Ошибка. Число больше 999')
    else if num < 0 then
        writeln('Ошибка. Число отрицательно')
    else
    begin
        if num mod 2 = 0 then
            writeln('Число ', num, ' четное.')
        else
            writeln('Число ', num, ' нечетное.');

        if num < 10 then
            writeln('В данном числе 1 цифра')
        else if num < 100 then
            writeln('В данном числе 2 цифры')
        else if num < 1000 then
            writeln('В данном числе 3 цифры');
    end;

    readln;
end.