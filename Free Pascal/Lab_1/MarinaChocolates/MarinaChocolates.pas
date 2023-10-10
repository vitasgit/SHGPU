// snikers - Marina's favorite chocolate
program MarinaChocolates;
	var
		money, snikers_price: Real;
		snikers: Integer;
begin
	money := 2246.64;
	snikers_price := 61.5;
	
	snikers := Trunc(money / snikers_price);
	writeln('Count chocolates: ', snikers);
end.