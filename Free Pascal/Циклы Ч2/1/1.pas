program studentHeight;
var
	i, students: Integer;
	height, sum_height, average_height: Real;

begin
	write('Введие кол-вo учеников: ');
	readln(students);

	sum_height := 0;
	writeln('Введие рост всех учеников:');
	for i := 1 to students do
		begin
			readln(height);
			sum_height := sum_height + height;
		end;

	average_height := sum_height / students;
	writeln('Средний рост: ', average_height:0:2);
end.