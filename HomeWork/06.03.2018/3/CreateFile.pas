program z1;
  var s:string;
    c:real;
    f: file of real;
    i,n: Integer;
begin
    assign (f, 'Input.txt');
    rewrite(f);
    readln(n);
    for i := 1 to n do
        begin
            readln(c);
            write(f,c);
        end;

    close(f);
end.