program nabe;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    for i := 1 to 40 do
      if (i mod 3 = 0) or (i mod 10 = 3) or (i div 10 = 3) then
        Writeln('Aho')
      else
        Writeln(i.ToString);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
