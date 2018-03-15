program Tesk;

procedure CreateFile(filename:String);
var 
    f:file of word;
    n,t,i:Word;
begin
    Assign(f, filename);
    Rewrite(f);
    Readln(n);
    for i := 1 to n do
    begin
        readln(t);
        write(f,t);
    end;
    close(f);    
end;

procedure ReadFile(filename:String);
var 
    f:file of word;
    t:Word;
begin
    Assign(f, filename);
    Reset(f);
    while (not EOF(f)) do begin // Пока не конец входного файла 
        read(f,t); // Считываем число
        write(t, ' '); // Выводим цифру для проверки решения
    end;
    writeln();
    close(f);    
end;

procedure ReverseFile(filename:String);
var 
    f:file of word;
    i,t1,t2,size:Word;
begin
    Assign(f, filename);
    Reset(f);
    size := filesize(f);
    for i:= 0 to (size div 2) -1 do begin
        // Read
        seek(f,i);
        read(f, t1);
        seek(f,size-i-1);
        read(f, t2);
        // Write
        seek(f,i);
        write(f, t2);
        seek(f,size-i-1);
        write(f, t1);
    end;
    close(f);    
end;

var 
    f:file of word;
    filename:String;
begin
    filename:='Output.txt';
    CreateFile(filename);
    ReadFile(filename);
    ReverseFile(filename);
    ReadFile(filename);
end.