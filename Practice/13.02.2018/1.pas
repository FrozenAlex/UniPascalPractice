program TaskOne;

function NonRecursive(n: Word; p: Word): Word;
var
  count: Word;
begin
  count := 0;
  while(n > 0) do // Пока n не равен нулю повторяем
  begin
    Inc(count);  // Увеличивем счетчик
    n := n div p; // Уменьшаем n 
  end;
  NonRecursive := count;
  //Writeln(LogN(2,n));
end;


function Recursive(n: Word; p: Word): Word;
var
  count: Word;
begin
  if(n > 0) then count := 1 + Recursive(n div p, p);
  else count := 0;
  Recursive := count;
  //Writeln(LogN(2,n));
end;

var
  n, i: Word;

begin
  Readln(n); // Ввод числа N
  Writeln('Nonrec ', NonRecursive(n, 2));
  Writeln('Rec ', Recursive(n, 2));
end.
