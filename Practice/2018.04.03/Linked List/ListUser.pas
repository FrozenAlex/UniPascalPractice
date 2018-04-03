program ListUser;
uses ListUnit;

var List: pelement;
begin
    CreateList(List, 10);
    ShowList(List);
    Writeln;
    Writeln('MaxElement: ',MaxOfList(List));
    Writeln('CountOdd: ',CountOdd(List));
    DeleteMaxElement(List);
    ShowList(List);
end.