program power;

var 
	a, b: Real;
	a_power, b_power: Real;

begin
	write('Введите первое число: ');
	readln(a);
	write('Введите второе число: ');
	readln(b);

	if (a < 0) and (b < 0) then writeln('Оба числа отрицательны')
	else
		begin
			if a >= 0 then
			begin
				a_power := a*a;
				writeln(a_power:0:2);
			end;

			if b >= 0 then
			begin
				b_power := b*b;
				writeln(b_power:0:2);
			end;
		end;
end.