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
      case i of
        1, 2:
          Writeln(i);
      else
        for i := 3 to s.ToInteger do
        begin
          a3 := a1 + a2;
          a1 := a2;
          a2 := a3;
        end;
        Writeln(a3.ToString);
      end;
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
