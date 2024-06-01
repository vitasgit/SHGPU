program n01;
var
    f: text;
    line: String;
    i: Integer;
    letters, words, sentences: Integer;
    inWord: Boolean;
begin
    assign(f, 'file.txt');
    reset(f);
    letters := 0;
    words := 0;
    sentences := 0;

    while not Eof(f) do
    begin
        Readln(f, line);
        inWord := False;

        for i := 1 to length(line) do
        begin
            if (line[i] in ['a'..'z']) or (line[i] in ['A'..'Z']) then 
            begin
                inc(letters);
                if not inWord then
                begin
                    inWord := True;
                    inc(words);
                end;
            end
            else
                inWord := False;

            if line[i] in ['.', '!', '?'] then inc(sentences);
        end;
    end;

    writeln('букв: ', letters);
    writeln('слов: ', words);
    writeln('предложений: ', sentences);

    close(f);
end.
