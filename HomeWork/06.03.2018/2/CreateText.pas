program z1;
  var s:string;
    c:char;
    f1: TextFile;
    f2: TextFile;
    i: Integer;
begin
    assign (f1, 'Input.txt');
    assign (f2, 'Output.txt');

    reset(f1);
    rewrite(f2);

    i:=1;
    read(f1, c);
    while(c <> '&') do begin
        if (c < 'z') and (c > 'A') then begin
            if (i mod 3 = 0) then write(f2, c, #13#10) else
            begin
                write(f2, c, ' ');
            end;
            Inc(i);
        end;
        
        read(f1,c); // a - 65 z - 122
    end;
    
    close(f1);
    close(f2);
end.