program kaijou;

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
    Writeln('階乗を計算します');
    Readln(s);
    j := 1;
    for i := 2 to s.ToInteger do
      j := j * i;
    Writeln(j.ToString);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
