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
    { TODO -oUser -cConsole ���C�� : �����ɃR�[�h���L�q���Ă������� }
    Writeln('�K����v�Z���܂�');
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
