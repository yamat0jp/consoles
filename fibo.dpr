program fibo;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a1, a2, a3: integer;
  s: string;
  i: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      a1 := 0;
      a2 := 1;
      for i := 1 to s.ToInteger do
      begin
        a3 := a1 + a2;
        a1 := a2;
        a2 := a3;
      end;
      Writeln(a2.ToString);
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
