program number;
uses SysUtils;

var
	num: Integer;
	a, b, c: Integer;
	s: Integer;
	inverse: String;
	
begin
	write('Введите число: ');
	readln(num);

	a := num div 100;
	b := (num mod 100) div 10;
	c := num mod 10;

	s := a + b + c;
	writeln('Сумма чисел: ', s);

	inverse := IntToStr(c) + IntToStr(b) + IntToStr(a);
	writeln('Обратный порядок: ', inverse);
end.