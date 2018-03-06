program Xx;

const n=3;

function pow(a,b:integer): integer;
var i:word;
begin
    pow:=1;
    for i := 1 to b do
        pow:= pow*a;

end;


var a: array[1..n] of Char = ('a','b','c');
    b,b1,i: word;

begin
    for b := 0 to pow(2,n)-1 do 
    begin
        b1:= b;
        Write('[');
        for i := n downto 1 do begin
            if (b1 mod 2) = 1 then begin
                Write(a[i], ' ');
                b1:= b1 div 2; 
            end;

        end;
        Write(']');
        WriteLn();
    end;
        
end.