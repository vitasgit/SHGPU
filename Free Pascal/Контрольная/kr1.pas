program kr;

type
    notebook = record
        brand: String;
        ram: Integer;
        processor: Real;
        price: Integer;
    end;

var
    catalog: array of notebook;
    N, i, j, bestIndex: Integer;
    brand: String;
    ram: Integer;
    processor: Real;
    price: Integer;
    maxRating, rating: Real;
    f: TextFile;
    isCorrectBrand: Boolean;

const
    brands: array[1..5] of string = ('acer', 'asus', 'lenovo', 'dell', 'hp');

begin
    Write('Введите количество ноутбуков: ');
    ReadLn(N);
    SetLength(catalog, N);

    for i := 0 to N - 1 do
    begin
        WriteLn('Введите характеристики ноутбука ', i + 1, ':');
        Write('Марка (Acer, Asus, Lenovo, Dell, HP): ');

        repeat
            ReadLn(brand);
            brand := LowerCase(brand);

            isCorrectBrand := false;
            for j := 1 to 5 do
            begin
                if brand = brands[j] then
                begin
                    isCorrectBrand := true;
                    break;
                end;
            end;

            if not isCorrectBrand then
                Write('Введите корректную марку: ');

        until isCorrectBrand;

        Write('Объем ОЗУ (ГБ): ');
        ReadLn(ram);

        Write('Скорость процессора (ГГц): ');
        ReadLn(processor);

        Write('Цена (рублей): ');
        ReadLn(price);

        brand[1] := UpCase(brand[1]);
        catalog[i].brand := brand;
        catalog[i].ram := ram;
        catalog[i].processor := processor;
        catalog[i].price := price;
    end;

    Assign(f, 'katalog.txt');
    Rewrite(f);
    WriteLn(f, 'Каталог ноутбуков:');

    for i := 0 to N - 1 do
    begin
        WriteLn(f, i + 1, ') ', catalog[i].brand, ': ', catalog[i].ram, ' ГБ, ', catalog[i].processor:0:2, ' ГГц, ', catalog[i].price, ' рублей');
    end;

    close(f);

    maxRating := 0.0;
    bestIndex := 0;
    for i := 0 to N - 1 do
    begin
        rating := (catalog[i].ram + catalog[i].processor) / catalog[i].price;

        if rating > maxRating then
        begin
            maxRating := rating;
            bestIndex := i;
        end;
    end;

    Assign(f, 'rez.txt');
    Rewrite(f);
    WriteLn(f, 'Лучший ноутбук:');
    WriteLn(f, 'Марка: ', catalog[bestIndex].brand);
    WriteLn(f, 'Объем ОЗУ: ', catalog[bestIndex].ram, ' ГБ');
    WriteLn(f, 'Скорость процессора: ', catalog[bestIndex].processor:0:2, ' ГГц');
    WriteLn(f, 'Цена: ', catalog[bestIndex].price, ' рублей');

    close(f);
end.
