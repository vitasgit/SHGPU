program calc;
var
	a, b: Int64;
	oper: Char;
	res: Real;
begin
	write('Введите число a: ');
	readln(a);

	write('Введите число b: ');
	readln(b);

	writeln('Введите операцию (+, -, *, /): ');
	readln(oper);

	case oper of
		'+': res := a + b;
		'-': res := a - b;
		'*': res := a * b;
		'/': 
		  begin
		    if b <> 0 then
		      res := a / b
		    else
		    begin
		      writeln('Ошибка: деление на ноль.');
		      exit;
		    end;
		  end;

		else writeln('Ошибка: неверная операция.');
	end;

  writeln(a, ' ', oper, ' ', b, ' = ', res:0:2);
end.
