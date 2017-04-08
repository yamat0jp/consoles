program fibo2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function fibo(count: integer): integer;
begin
  case count of
    1:
      result := 0;
    2:
      result := 1;
  else
    result := fibo(count - 1) + fibo(count - 2);
  end;
end;

var
  s: string;
  i, j: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      Writeln(fibo(s.ToInteger).ToString);
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
