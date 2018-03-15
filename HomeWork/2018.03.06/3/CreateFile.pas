program z1;
  var
    c:real;
    f: file of real;
    i,n: Integer;
begin
    assign (f, 'Input.txt');
    rewrite(f); // Установить курсор на начало файл
    
    readln(n); // Ввод количества 
    for i := 1 to n do
    begin
        readln(c);
        write(f,c);
    end;

    close(f); // Закрыть файл
end.