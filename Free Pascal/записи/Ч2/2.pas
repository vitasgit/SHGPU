program CarCatalog;

type
    car = record
        brand: string;
        color: string;
        year: integer;
        enginePower: integer;
        country: string;
        condition: string; // "new" or "used"
        previousOwners: integer; // valid only if condition is "used"
        mileage: integer; // valid only if condition is "used"
    end;

var
    cars: array of car;
    N, i: integer;
    searchField1, searchField2: string;
    found: boolean;

begin
    writeln('Введите количество автомобилей в каталоге:');
    readln(N);
    SetLength(cars, N);

    // Ввод информации о каждом автомобиле
    for i := 0 to N-1 do
    begin
        writeln('Введите марку авто ', i+1, ':');
        readln(cars[i].brand);
        writeln('Введите цвет авто ', i+1, ':');
        readln(cars[i].color);
        writeln('Введите год выпуска авто ', i+1, ' (от 1990 до текущего года):');
        readln(cars[i].year);
        writeln('Введите мощность двигателя авто ', i+1, ' (в лошадиных силах):');
        readln(cars[i].enginePower);
        writeln('Введите страну производителя авто ', i+1, ':');
        readln(cars[i].country);
        writeln('Это новый автомобиль или подержанный? (new / used):');
        readln(cars[i].condition);
        if cars[i].condition = 'used' then
        begin
            writeln('Введите количество предыдущих владельцев для авто ', i+1, ':');
            readln(cars[i].previousOwners);
            writeln('Введите пробег для авто ', i+1, ':');
            readln(cars[i].mileage);
        end;
    end;

    // Поиск автомобиля по выбранным полям
    writeln('Введите первое поле для поиска (brand, color, year, enginePower, country, condition):');
    readln(searchField1);
    writeln('Введите значение первого поля для поиска:');
    readln(searchField2);

    found := False;
    for i := 0 to N-1 do
    begin
        if (searchField1 = 'brand') and (cars[i].brand = searchField2) then
        begin
            writeln('Марка: ', cars[i].brand);
            writeln('Цвет: ', cars[i].color);
            writeln('Год выпуска: ', cars[i].year);
            writeln('Мощность двигателя: ', cars[i].enginePower, ' л.с.');
            writeln('Страна производитель: ', cars[i].country);
            writeln('Состояние: ', cars[i].condition);
            if cars[i].condition = 'used' then
            begin
                writeln('Количество предыдущих владельцев: ', cars[i].previousOwners);
                writeln('Пробег: ', cars[i].mileage, ' км');
            end;
            writeln;
            found := True;
        end
        else if (searchField1 = 'color') and (cars[i].color = searchField2) then
        begin
            writeln('Марка: ', cars[i].brand);
            writeln('Цвет: ', cars[i].color);
            writeln('Год выпуска: ', cars[i].year);
            writeln('Мощность двигателя: ', cars[i].enginePower, ' л.с.');
            writeln('Страна производитель: ', cars[i].country);
            writeln('Состояние: ', cars[i].condition);
            if cars[i].condition = 'used' then
            begin
                writeln('Количество предыдущих владельцев: ', cars[i].previousOwners);
                writeln('Пробег: ', cars[i].mileage, ' км');
            end;
            writeln;
            found := True;
        end
        else if (searchField1 = 'year') and (StrToIntDef(searchField2, -1) = cars[i].year) then
        begin
            writeln('Марка: ', cars[i].brand);
            writeln('Цвет: ', cars[i].color);
            writeln('Год выпуска: ', cars[i].year);
            writeln('Мощность двигателя: ', cars[i].enginePower, ' л.с.');
            writeln('Страна производитель: ', cars[i].country);
            writeln('Состояние: ', cars[i].condition);
            if cars[i].condition = 'used' then
            begin
                writeln('Количество предыдущих владельцев: ', cars[i].previousOwners);
                writeln('Пробег: ', cars[i].mileage, ' км');
            end;
            writeln;
            found := True;
        end
        else if (searchField1 = 'enginePower') and (StrToIntDef(searchField2, -1) = cars[i].enginePower) then
        begin
            writeln('Марка: ', cars[i].brand);
            writeln('Цвет: ', cars[i].color);
            writeln('Год выпуска: ', cars[i].year);
            writeln('Мощность двигателя: ', cars[i].enginePower, ' л.с.');
            writeln('Страна производитель: ',
 
