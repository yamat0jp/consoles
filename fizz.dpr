program fizz;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    for i := 1 to 100 do
      if i mod 15 = 0 then
        Writeln('FizzBuzz')
      else if i mod 3 = 0 then
        Writeln('Fizz')
      else if i mod 5 = 0 then
        Writeln('Buzz')
      else
        Writeln(i.ToString);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
