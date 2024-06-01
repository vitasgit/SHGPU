program n01;
type
	pitem = ^item;
	item = record
		data: Integer;
		prev: pitem;
	end;

var
	top, p: pitem;
	n, i, ke, e, k, d: Integer;
	sum, count: Integer;
	srArifm: Real;

procedure add(x:integer); //Добавление в стек
begin
	new(p);
	p^.data := x;
	p^.prev := top;
	top := p
end;

procedure delete; //Удаление из стека
begin
	if top <> nil then begin
		p:= top^.prev;
		dispose(top);
		top:= p
end;
end;

procedure print; //Вывод содержимого стека
begin
	writeln('Стек:');
	p:= top;

	while p <> nil do 
	begin
		write(p^.data, ' ');
		p:= p^.prev;
	end;

	writeln;
end;

procedure sr_arifm; //ср арифм
begin
	p:= top;
	sum:= 0;
	count:= 0;

	while p <> nil do 
	begin
		sum:= sum + p^.data;
        p:= p^.prev;
        count:= count + 1;
	end;

	srArifm:= sum / count;

	writeln('среднее арифм: ', srArifm:0:2);
end;

begin
	randomize;
	top:= nil;
	writeln('Введите начальное количество элементов в стеке');
	readln(ke);

	for i:= 1 to ke do
	begin
		k:= random(50);
		add(k);
	end;

	d:= 1;
	while d <> 0 do 
	begin
		writeln('Выберите действие:');
		writeln('1 – добавить элемент в стек');
		writeln('2 – удалить N элементов стека');
		writeln('3 – Вывести элементы на экран');
		writeln('4 – Ср арифм элементов');
		writeln('0 – выход');
		readln(d);

		case d of
		1: 
		begin 
			writeln('Введите элемент');
			readln(k);
			add(k);
		end;

		2:
		begin 
			writeln('Введите количество элементов для удаления'); 
			readln(ke);
			for i:=1 to ke do
				delete;
		end;

		3: print;

		4: sr_arifm;

		else if d <> 0 then
			writeln('Ошибка ввода')
		end;
	end;
end. 
