program TriangleArea;

var
	aX, aY, bX, bY, cX, cY: Real;
	ab, bc, ca: Real;
	p, s: Real;

begin
	write('Введите координаты вершины A: ');
	readln(aX, aY);
	write('Введите координаты вершины B: ');
	readln(bX, bY);
	write('Введите координаты вершины C: ');
	readln(cX, cY);

	ab := Sqrt(Sqr(bX - aX) + Sqr(bY - aY));
	bc := Sqrt(Sqr(cX - bX) + Sqr(cY - bY));
	ca := Sqrt(Sqr(aX - cX) + Sqr(aY - cY));

	p := (ab + bc + ca) / 2;
	s := Sqrt(p * (p - ab) * (p - bc) * (p - ca));

	writeln('длина AB: ', ab:0:2);
	writeln('длина BC: ', bc:0:2);
	writeln('длина CA: ', ca:0:2);
	writeln('площадь теругольника: ', s:0:2);
end.