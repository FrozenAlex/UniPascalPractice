program TaskTwo;

// Рекурсивная
function Fibonacci_r(a, b, n: Word): Word;
begin
  if(n = 1) then Fibonacci_r := a;
  if(n = 2) then Fibonacci_r := b;
  if(n > 2) then Fibonacci_r := Fibonacci_r(b, a+b, n-1)
end;

// Процедурная версия
function Fibonacci(n: Word): Word;
var a,b,c,i:Word;
begin
  a:=0;
  b:=1;
  for i:=2 to n do begin
    c:= a+b;
    a:=b;
    b:=c;
  end;
  Fibonacci := b; 
end;

var
  n: Word;

begin
  readln(n); // Ввод количества элементов массива
  Writeln('Рекурсия: ', Fibonacci_r(1,1,n)); 
  Writeln('Не рекурсия: ', Fibonacci(n));
end.