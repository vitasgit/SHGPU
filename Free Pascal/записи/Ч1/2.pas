program PowerliftingCompetition;

type
    athlete = record
        fullName: string;
        weight: real;
        result1, result2, result3: real;
        totalPoints: real;
    end;

var
    participant: athlete;
    N, i: integer;
    maxPoints: real;
    minWeight: real;
    winnerFullName: string;

begin
    writeln('Введите количество участников:');
    readln(N);

    maxPoints := -1;
    minWeight := -1;
    winnerFullName := '';

    for i := 1 to N do
    begin
        writeln('Введите ФИО спортсмена ', i, ':');
        readln(participant.fullName);
        writeln('Введите вес спортсмена (кг):');
        readln(participant.weight);
        writeln('Введите результаты по упражнению №1:');
        readln(participant.result1);
        writeln('Введите результаты по упражнению №2:');
        readln(participant.result2);
        writeln('Введите результаты по упражнению №3:');
        readln(participant.result3);

        participant.totalPoints := participant.result1 + participant.result2 + participant.result3;

        if (participant.totalPoints > maxPoints) or
           ((participant.totalPoints = maxPoints) and (participant.weight < minWeight)) then
        begin
            maxPoints := participant.totalPoints;
            minWeight := participant.weight;
            winnerFullName := participant.fullName;
        end;
    end;

    writeln('Победитель:');
    writeln('ФИО: ', winnerFullName);
    writeln('Общее кол-во баллов: ', maxPoints:0:2);
end.
