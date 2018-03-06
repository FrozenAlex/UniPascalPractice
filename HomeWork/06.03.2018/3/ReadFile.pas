program z1;
  var s:string;
    sum,n:real;
    f: file of real;
    i,count: Integer;
begin
    assign (f, 'Input.txt');
    reset(f);
    sum:= 0;
    count:=0;
    while (not EOF(f)) do begin
        read(f,n);
        sum:= sum + n;
        Inc(count);
        write(n:4:2,' ');
    end;
    writeln();
    writeln('Среднее ',(sum/count):4:2);
    close(f);
end.