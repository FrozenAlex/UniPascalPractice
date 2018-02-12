program TaskTwo;

//  Функция для подсчета значимых нулей в p-ичной записи числа (из 1-й задачи, но с Integer)
function CountZeroesPN(n: Integer; p: Word): Word;
var
  count: Word;
begin
  count := 0;
  while(n <> 0) do // Пока n не равен нулю повторяем
  begin
    if ((n mod p) = 0) then Inc(count); // Если встретился 0, то увеличить временный счетчик    
    n := n div p; // Уменьшаем n 
  end;
  CountZeroesPN := count;
end;

var
  a: array [1..255] of Integer;
  i, n, tz: Word;
  minz, maxn: Integer;

begin
  readln(n); // Ввод количества элементов массива
  for i := 1 to n do readln(a[i]); // Ввод элементов массива
  
  maxn := a[1]; // Первый - минимум
  minz := CountZeroesPN(a[1],2);
  
  for i := 2 to n do
  begin
    tz := CountZeroesPN(a[i],2); // Считаем нули в i-м числе
    if (tz < minz) then  // Если количество нулей меньше чем в минимуме
    begin
      maxn := a[i]; // Заменяем максимум
      minz := CountZeroesPN(a[i],2); // И минимум нулей
    end;
    
    if (tz = minz) and (a[i] > maxn) then // Если нулей столько же, то сравниваем числа 
      maxn := a[i];
  end;
  
  Writeln('Искомое число: ', maxn); 
  Writeln('Количество нулей: ', minz);
end.