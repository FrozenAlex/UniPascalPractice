unit ListUnit;

interface
    type 
        pelement = ^element;
        element = record
            value:word;
            next:pelement;
        end;

    procedure push (var First:pelement; x: word);
    procedure CreateEmptyList(var First: pelement);
    procedure CreateList(var First:pelement; n:Word);
    procedure ShowList(First:pelement);
    procedure DeleteElement(var First:pelement; x:Word);
    procedure DeleteMaxElement(var First:pelement);

    function MaxOfList(First:pelement):word;
    function pop(var First:pelement):word;
    function isEmpty(First:pelement):boolean;
    function CountOdd(First:pelement):word;
    
implementation
    procedure CreateList(var First:pelement; n:Word);
    var i: Word;
    begin
        CreateEmptyList(First);
        
        for i := 1 to n do push(First,random(100));
    end;

    procedure CreateEmptyList(var First: pelement);
    begin
        First:= nil;
    end;

    function isEmpty(First:pelement): boolean;
    begin
        isEmpty := First = nil;
    end;
    
    procedure ShowList(First:pelement);
    begin
        while (isEmpty(First) = false) do 
        begin
            write(First^.value, ' ');
            First:=First^.next;
        end;
    end;


    function pop(var First:pelement): word;
    var p: pelement;
    begin
        p:= First;
        First:= First^.next;
        pop := p^.value; // idk return value of former top element // dispose( ) free memory
        dispose(p); // Free memory?
    end;

    procedure push (var First:pelement; x: word);
    var p:pelement;
    begin
        new(p);
        p^.next:=First;
        p^.value:=x;
        First:= p;
    end;

    function MaxOfList(First:pelement): word;
    var max: word;
    begin
        if(isEmpty(First)) then 
        begin
            writeln('Список таки пуст. Возвращаю 0.');
            MaxOfList:=0;
        end else
        begin
            max:= First^.value;
            while (isEmpty(First) = false) do 
            begin
                if (First^.value > max) then max:= First^.value;
                First:=First^.next;
            end;
            MaxOfList:=max;    
        end;
    end;

    function CountOdd(First:pelement):word;
    var counter:Word; isEven:boolean;
    begin
        counter:=0;  isEven:= false;
        while (isEmpty(First) = false) do 
            begin
                if (isEven) then Inc(counter);
                First:=First^.next;
                isEven:= not isEven;
            end;
        CountOdd:= counter;
    end;

    procedure DeleteElement(var First:pelement; x:Word);
    var p,t: pelement;
    begin
        p:= First;
        if (First^.value = x) then pop(First)
        else 
        while (isEmpty(p) = false) do begin
            if (p^.value = x) then begin 
                t^.next:= p^.next;
                dispose(p); // Free memory
                break; // Exit while
            end;
            t:=p; p:=p^.next; // i++
        end;
    end;

    procedure DeleteMaxElement(var First:pelement);
    begin
        DeleteElement(First, MaxOfList(First));
    end;
end.