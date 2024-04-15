program numbers;

var
  K, a, b, c, s: Integer;

begin
    writeln('Введите K: ');
    readln(K);
    K := abs(K);

    for a := 1 to 9 do
        for b := 0 to 9 do
            for c := 0 to 9 do
                begin
                    s := a + b + c;

                    if s = K then
                      writeln(a, b, c);
                end;
end.
