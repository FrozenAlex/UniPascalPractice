program Student;

type Date = record
    d: 1..31;
    m: 1..12;
    y: Word;
end;


TStudXX = record
    nm:String[30];
    crs:Byte;
    bDay: Date;
    case sex: Char of
        'm': (soldier: Boolean;
            sz: Byte);
        'f': (phone: String[10])
end;

TGroup = array[1..25] of TStudXX;
var pm,iss:TGroup; 
    n,i:Byte;
    c: Char;
// Используя выше приведенные описния ввести студентов студ группы
begin
    readln(n);
    for i := 1 to n do
    with pm[i] do begin
        Write('Имя: '); Readln(nm);
        Write('Курс: '); Readln(crs);
        Write('Дата рождения ');
        Write('  День: '); Readln(bDay.d);
        Write('  Месяц: '); Readln(bDay.m);
        Write('  Год: '); Readln(bDay.y);
        Write('Пол: (m/f): '); Readln(sex);
        case sex of
            'm': begin
                    Write('Воинская обязанность(д/н):');
                    Readln(c);
                    soldier := (c = 'д');
                    Write('Спортивных разрядов:');   
                    Readln(sz);
                end;
            'f': begin
                    Write('Номер телефона: ');
                    Readln(phone);
                end;
        end;
    end;

end.