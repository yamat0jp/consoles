program year;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i: integer;

begin
  try
    { TODO -oUser -cConsole ���C�� : �����ɃR�[�h���L�q���Ă������� }
    for i := 1900 to 3000 do
      if (i mod 4 = 0) and (i mod 100 > 0) or (i mod 400 = 0) then
        Writeln(i.ToString);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
