program TaskOne;

// Функция для подсчета значимых нулей в десятичной записи числа
function CountZeroesP10(n: Word): Word;
var
  count: Word;
begin
  count := 0;
  while(n > 0) do
  begin
    if ((n mod 10) = 0) then Inc(count);
    n := n div 10;
  end;
  CountZeroesP10 := count;
end;

//  Функция для подсчета значимых нулей в двоичной записи числа
function CountZeroesP2(n: Word): Word;
var
  count: Word;
begin
  count := 0;
  while(n > 0) do // Пока n не равен нулю повторяем
  begin
    if ((n mod 2) = 0) then Inc(count); // Если встретился 0, то величить временный счетчик 
    n := n div 2; // Уменьшаем n 
  end;
  CountZeroesP2 := count;
end;

//  Функция для подсчета значимых нулей в p-ичной записи числа
function CountZeroesPN(n: Word; p: Word): Word;
var
  count: Word;
begin
  count := 0;
  while(n > 0) do // Пока n не равен нулю повторяем
  begin
    if ((n mod p) = 0) then Inc(count); // Если встретился 0, то увеличить временный счетчик    
    n := n div p; // Уменьшаем n 
  end;
  CountZeroesPN := count;
end;


var
  n,i: Word;

begin
  readln(n); // Ввод числа N
  Writeln(CountZeroesPN(n,10)); // Вывод количества значимых нулей в десятичной записи числа
  Writeln(CountZeroesPN(n,2)); // Вывод количества значимых нулей в двоичной записи числа
end.
