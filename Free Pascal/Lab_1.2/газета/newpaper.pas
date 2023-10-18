//Наталья Петровна может продавать газеты, а может помидоры, и она платит НДФЛ(он в россии никогда не меняется)
program newpaper;

var
	thing_count: Integer;
	thing_price, profit, tax, profit_taxed: Real;
	
begin
	write('Введите стоимость продаваемого предмета: '); 
	readln(thing_price);
	write('Введите количество продаж: ');
	readln(thing_count);

	tax := 0.13;
	profit := (thing_count * thing_price);
	profit_taxed := profit - (profit * tax);
	writeln('Прибыль: ', profit_taxed:0:2);
end.