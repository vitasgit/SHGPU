program termLimit;
	var
		t: Integer;
begin
	writeln('Введите температуру: ');
	readln(t);

	case t of
		-25..0: writeln('все');
		-30..-26: writeln('не учатся начальные классы');
		-35..-31: writeln('не учатся до 9 класса');
		-100..-36: writeln('не учатся все');
	end;
end.