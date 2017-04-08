program tower2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function tower(count: integer): integer;
begin
  case count of
    0:
      result := 0;
    1:
      result := 1;
  else
    result := 2 * tower(count - 1) + 1;
  end;
end;

var
  s: string;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      Writeln(tower(s.ToInteger).ToString);
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
