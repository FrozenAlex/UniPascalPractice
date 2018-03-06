program z1;
  var
    sum,n:real;
    f: file of real;
    count: Integer;
begin
    assign (f, 'Input.txt');
    reset(f); // Перевод указателя файла в начало
    sum:= 0; // Сумма инициализируется нулем
    count:=0; // Количество чисел
    while (not EOF(f)) do begin // Пока не конец входного файла 
        read(f,n); // Считываем число
        sum:= sum + n; // Прибавляем его к сумме
        Inc(count); // Увеличиваем количество цифр
        write(n:4:2,' '); // Выводим цифру для проверки решения
    end;
    writeln();
    writeln('Среднее ',(sum/count):4:2); // Выводим среднее
    close(f);
end.