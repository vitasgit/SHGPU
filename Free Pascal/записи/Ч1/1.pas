program n01;

type
    person = record
        fullName: string;
        sex: string;
        dateOfBirth: string[8];
        placeOfBirth: string[50];
    end;

var
    people: array of person;
    N, i, youngestIndex: integer;
    menCount, womenCount: integer;
    minBirthDate: string;
    placeCounts: array of record
        place: string;
        count: integer;
    end;
    j, k: integer;
    found: boolean;

begin
    writeln('Введите кол-во людей:');
    readln(N);
    SetLength(people, N);
    SetLength(placeCounts, N);

    for i := 0 to N-1 do
    begin
        writeln('Введите ФИО:');
        readln(people[i].fullName);
        writeln('Введите пол (м/ж):');
        readln(people[i].sex);
        writeln('Введите дату рождения (формат ГГГГММДД):');
        readln(people[i].dateOfBirth);
        writeln('Введите место рождения:');
        readln(people[i].placeOfBirth);
    end;

    youngestIndex := 0;
    minBirthDate := people[0].dateOfBirth;
    menCount := 0;
    womenCount := 0;

    for i := 0 to N-1 do
    begin
        if people[i].dateOfBirth > minBirthDate then
        begin
            youngestIndex := i;
            minBirthDate := people[i].dateOfBirth;
        end;

        if people[i].sex = 'м' then
            Inc(menCount)
        else if people[i].sex = 'ж' then
            Inc(womenCount);
        
        found := False;
        for j := 0 to k-1 do
        begin
            if placeCounts[j].place = people[i].placeOfBirth then
            begin
                Inc(placeCounts[j].count);
                found := True;
                Break;
            end;
        end;
        
        if not found then
        begin
            placeCounts[k].place := people[i].placeOfBirth;
            placeCounts[k].count := 1;
            Inc(k);
        end;
    end;

    writeln('Самый молодой человек: ', people[youngestIndex].fullName);
    writeln('Кол-во мужчин: ', menCount);
    writeln('Кол-во женщин: ', womenCount);

    writeln('Люди с одинаковым местом рождения:');
    for j := 0 to k-1 do
    begin
        if placeCounts[j].count > 1 then
            writeln('Место рождения: ', placeCounts[j].place, ', Кол-во: ', placeCounts[j].count);
    end;
end.
