# Практика №3

## Задача 1

Написать программу, которая используя соответствующие процедуры (CrtLst, ShowLst, notOddCnt, MxOfLst, DelMax):

1. Создаёт односвязный список из N случайных натуральных значений;
2. Отображает его на мониторе;
3. Подсчитывает число чётных элементов в списке;
4. Ищет максимальный элемент в списке;
5. Исключает максимальный элемент из списка.

Решить указанные задачи на основе юнитной реализации пакета перечисленных подпрограмм.


Вот возможный вариант юнитного решения двух первых задач.

```pascal
//Главная программа:
program LstUser;
uses LstU;
  var F:PEL;
Begin
   CrtLst(F,10);
   ShowLst(F);
End.
```

```pascal
unit LstU;
interface
    Type T=Integer;
         PEL=^EL;
         EL=record
             inf:T;
             nxt:PEL
         End;
    procedure push(var First:PEL; x:T);
    procedure CrtEmpLst(var First:PEL);
    procedure CrtLst(var First:PEL; n:Word);
    procedure ShowLst(First:PEL);
    function MaxOfLst(First:PEL):T;
    function notOddCnt(First:PEL): Word;
    procedure DelLstMx(var First:PEL);
implementation
    procedure push(var First:PEL; x:T);
      Var P:Pel;
    begin
      new(p);
      p^.inf:=x; p^.nxt:=First; First:=p
    End;
    procedure CrtEmpLst(var First:PEL );
    begin
        First:=nil;
    End;
   
    procedure CrtLst(var First:PEL; n:Word);
      var i:Word;
    Begin
      CrtEmpLst(First);
      For i:=1 to n do Begin
          push(First,random(100));
      End;
    End;
   
    procedure ShowLst(First:PEL);
      var p:PEl;
    begin
       P:=First;
      while p<> nil do Begin
        Writeln(p^.inf); p:=p^.nxt;
      End;
   
    End;
    function MaxOfLst(First:PEL):T;
    begin
   
    End;
    function notOddCnt(First:PEL):Word;
    begin
   
    End;
    procedure DelLstMx(var First:PEL);
    begin
   
    End;
  End.
```