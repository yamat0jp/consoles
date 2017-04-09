program math_program;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Classes;

var
  i, j: integer;
  s: TStringList;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    s := TStringList.Create;
    for i := 2 to 1000 do
    begin
      j := 2;
      while j <= 1000 do
        if (i mod j = 0) and (i <> j) then
          break
        else if i > j then
          inc(j)
        else
        begin
          s.Add(i.ToString);
          break;
        end;
    end;
    Write(s.DelimitedText);
    s.Free;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
