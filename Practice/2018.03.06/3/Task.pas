program Sphereeree;

var 
    f1: file of LongInt;
    f2: TextFile;
    i,j,n,t,t2,count: LongInt;
    

begin
    readln(n);
    Assign(f1,'source.bin');
    Rewrite(f1);
    for i:=0 to n do write(f1, i); // Заполнить файл цифрами

    for i:=2 to n do begin
        seek(f1,i); // перевод каретки на позицию
        read(f1,t); // считывание i-го элемента
        if(t>0) then begin
            // Удалить все кратные этому числу
            j:=i*2; // Начальное значение j
            while (j<=n) do begin
                seek(f1, j);
                write(f1,0); // перезаписываем на 0
                j:= j+i; // Увеличиваем счетчик
            end;   
        end; 
    end;

    seek(f1,1);

    // Открываем файл для вывода
    Assign(f2,'out.txt');
    Rewrite(f2);
    
    // Вывод всех не нулевых чисел из f1 в f2, а так же их подсчет
    count:=0;
    while (not EOF(f1)) do begin
        read(f1,t);
        if (t>0) then begin
            Inc(count);
            write(f2,t, ' ');
        end;
            
    end;

    // Вывод количества простых чисел
    writeln('Simple: ', count);
    writeln('%: ', (count/n):4:5);
    
    // Закрыть оба файла
    Close(f1);
    Close(f2);
end.



// Sort endless file