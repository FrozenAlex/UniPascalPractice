program Tudents;

type 
Student = record
    name: String;
    course :Byte;
    marks: array [1..5] of Byte;
    MidMark: Real;
   // sex: Boolean;
end;

Group = array[1..255] of Student;

var students :Group; 
    n,i,j,m:Byte;
    MaxMark, Tmark: Real;
    c: Char;
    f: File of Student;
begin
    Assign(f, 'students.bin');
    Rewrite(f);
    Write('Number of students: ');
    readln(n);
    for i := 1 to n do
    with students[i] do begin
        Write('Name: '); Readln(name);
        Write('Course: '); Readln(course);
        //Write('Пол: (m/f): '); Readln(sex);
        Write('Amount of Marks: '); 
        readln(m);
        for j:=1 to m do Readln(marks[j]);
        
        tmark := 0;
        for j:=1 to m do tmark:= tmark + marks[j];

        MidMark:= tmark / m;

    end;
    
    MaxMark:= 0;
    for i := 1 to n do
    with students[i] do if MidMark > MaxMark then MaxMark:= MidMark;

    for i := 1 to n do
    with students[i] do 
    if MidMark = MaxMark then
    begin
        WriteLn(name);
        WriteLn(course);
    end;
      
    Close(f);

end.