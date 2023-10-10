program power_a;
var
	a, a_2, a_4, a_3, a_9: Integer;

begin
	write('Enter integer number: ');
	readln(a);
	
	a_2 := a * a;
	a_4 := a_2 * a_2;

	a_3 := a * a * a;
	a_9 := a_3 * a_3 * a_3;

	writeln('a^4 = ', a_4);
	writeln('a^9 = ', a_9);
	readln();
end.