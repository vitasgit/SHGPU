Program zd2;

type
  book = record
    nazv, author, genre: string;
    year: integer;
    case pType: char of
      'p': (isPrinted: boolean);
      'e': (isEbook: boolean);
  end;

var
  b: array[1..100] of book;
  i, n, g: integer;
  ptype, searchType: char;

begin
  writeln('Введите количество книг');
  readln(n);
  
  for i := 1 to n do
  begin
    with b[i] do
    begin
      writeln('Название ', i, ' книги');
      readln(nazv);
      writeln('Автор ', i, ' книги');
      readln(author);
      writeln('Жанр ', i, ' книги');
      readln(genre);
      writeln('Год издания ', i, ' книги');
      readln(year);
      writeln('Тип публикации (p - печатная, e - электронная) ', i, ' книги');
      readln(pType);
      case pType of
        'p': isPrinted := true;
        'e': isEbook := true;
      end;
    end;
  end;
  
  writeln('Введите год издания');
  readln(g);

  writeln('Введите тип публикации для поиска (p - печатная, e - электронная)');
  readln(searchType);
  
  for i := 1 to n do
  begin
    if b[i].year = g then
    begin
      writeln('Название: ', b[i].nazv);
      writeln('Автор: ', b[i].author);
      writeln('Жанр: ', b[i].genre);
      writeln('Год издания: ', b[i].year);
      case b[i].pType of
        'p': writeln('Тип публикации: Печатная');
        'e': writeln('Тип публикации: Электронная');
      end;
    end;
  end;
  
  writeln('Книги с типом публикации ', searchType, ':');
  for i := 1 to n do
  begin
    case searchType of
      'p': if (b[i].pType = 'p') and b[i].isPrinted then
              writeln(b[i].nazv);
      'e': if (b[i].pType = 'e') and b[i].isEbook then
              writeln(b[i].nazv);
    end;
  end;
  
  readln;
end.
