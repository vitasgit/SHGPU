program printEvenNums;
var
	num, stop: Integer;
	sum, count: Integer;
begin
	write('Введите вверхнию границу: ');
	readln(stop);

	num := 0;
	count := 0;
	sum := 0;

	while stop >= num do
		begin
			writeln(num);
			count := count + 1;
			sum := sum + num;
			num := num + 2;
		end;

	writeln('Сумма: ', sum);
	writeln('Кол-во: ', count);
end.