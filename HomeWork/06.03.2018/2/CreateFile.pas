program z1;
  var s:string;
    f:TextFile;
begin
    assign (f, 'Input.txt');
    rewrite(f);
    readln(s);
    write(f,s);
    close(f);
end.