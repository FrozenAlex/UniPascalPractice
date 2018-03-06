program Illuminati;
  var
    f: TextFile;
    i,j,n: Integer;
begin
    assign (f, 'Input.txt');
    rewrite(f);
    readln(n); // Ввод n 
    for i := 1 to n do
    begin
        for j:=1 to (n * 2) do begin 
            if ((j > n-i+1) and (j < n+i+1)) then write(f,' ✡️ ') else write(f,'   ')
        end; 

        writeln(f);
    end;

    close(f); // Закрыть файл
end.
