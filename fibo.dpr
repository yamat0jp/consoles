program fibo;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a1, a2, a3: integer;
  s: string;
  c: Char;
  i: integer;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      a1 := 1;
      a2 := 1;
      if Length(s) > 0 then
      begin
        c := s[1];
        s := c;
        case c of
          '1':
            Writeln(a1.ToString);
          '2':
            Writeln(a2.ToString);
          '3' .. '9':
            begin
              for i := 3 to s.ToInteger do
              begin
                a3 := a1 + a2;
                a1 := a2;
                a2 := a3;
              end;
              Writeln(a3.ToString);
            end;
        end;
      end
      else
        break;
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
