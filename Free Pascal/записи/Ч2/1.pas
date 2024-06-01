program n01;

type
    contact = record
        lastName: string;
        firstName: string;
        secondName: string;
        phoneNumber: string;
    end;

var
    contacts: array of contact;
    N, i: integer;
    lastName, firstName, secondName: string;
    found: boolean;

begin
    writeln('Введите количество контактов в телефонном справочнике:');
    readln(N);
    SetLength(contacts, N);

    for i := 0 to N-1 do
    begin
        writeln('Введите фамилию контакта ', i+1, ':');
        readln(contacts[i].lastName);
        writeln('Введите имя контакта ', i+1, ':');
        readln(contacts[i].firstName);
        writeln('Введите отчество (второе имя) контакта ', i+1, ':');
        readln(contacts[i].secondName);
        writeln('Введите номер телефона контакта ', i+1, ':');
        readln(contacts[i].phoneNumber);
    end;

    writeln('Введите фамилию контакта для поиска:');
    readln(lastName);
    writeln('Введите имя контакта для поиска:');
    readln(firstName);
    writeln('Введите второе имя (отчество) контакта для поиска:');
    readln(secondName);

    found := False;
    for i := 0 to N-1 do
    begin
        if (contacts[i].lastName = lastName) and
           (contacts[i].firstName = firstName) and
           (contacts[i].secondName = secondName) then
        begin
            writeln('Найден контакт ', contacts[i].lastName, ' ', contacts[i].firstName, ' ', contacts[i].secondName, ': ', contacts[i].phoneNumber);
            found := True;
            Break;
        end;
    end;

    if not found then
        writeln('Контакт не найден.');
end.
 
