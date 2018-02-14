program TaskThree;

procedure Space(var s: String);
var
  i: Word;
begin
  i := pos(' ', s);
  if(i > 0) then 
  begin
    Delete(s, i, 1);
    Space(s);
  end;
end;

var
  s: String;

begin
  readln(s); // Ввод строки
  Space(s); // Удаление пробелов
  writeln(s) // Вывод
end.