program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  c, d: Char;
  i, j: integer;
  s: string;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    Randomize;
    c:=Chr(Ord('a')+Random(26));
    j:=Random(Ord('z')-Ord(c))+1;
    d:=c;
    for i := 1 to j do
      d := Succ(d);
    for i := 1 to 8 do
    begin
      Writeln(' '+c+' => '+j.ToString);
      Readln(s);
      if s = d then
      begin
        Writeln('clear');
        break;
      end;
    end;
    Writeln(d);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
