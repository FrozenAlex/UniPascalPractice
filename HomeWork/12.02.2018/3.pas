program TaskThree;

type
  range = 1..255;
  victor = array [range] of Integer;

var
  a: array [range, range] of Integer;
  b: victor;
  m, n, i, j: Word;

begin
  readln(m, n); // Ввод количества строк и столбцов
  for i := 1 to m do
    for j := 1 to n do readln(a[i, j]); // Ввод элементов матрицы i - строка, j - столбец
  
  
  for j := 1 to n do b[j] := a[1, j]; // 1й элемент (Начальный максимум)
  
  for j := 1 to n do 
    for i := 2 to m do 
      if b[j] < a[i, j] then b[j] := a[i, j]; // Нахождение максимума по столбцам
  
  for i := 1 to m do 
  begin
    for j := 1 to n do write(a[i, j]:3, ' '); // Вывод элементов матрицы
    writeln();
  end;
  writeln('Максимум:');
  for j := 1 to n do write(b[j]:3, ' ');
end.