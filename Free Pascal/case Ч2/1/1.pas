program numToRim;
	var
		x: Byte;
begin
	writeln('Введите число x: ');
	readln(x);

	case x of
		1: writeln('I');
		2: writeln('II');
		3: writeln('III');
		4: writeln('IV');
		5: writeln('V');
		6: writeln('VI');
		7: writeln('VII');
		8: writeln('VIII');
		9: writeln('IX');
		10: writeln('X');

		else writeln('Ошибка. Введите число от 1 до 10');
	end;
end.