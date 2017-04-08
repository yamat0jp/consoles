program tower;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  s: string;
  i, j: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      i := s.ToInteger;
      case i of
        0:
          Writeln('0');
        1:
          Writeln('1');
      else
        i := 1;
        for j := 2 to s.ToInteger do
          i := 2 * i + 1;
        Writeln(i.ToString);
      end;
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
