program dokudango;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  s: string;
  count, i: integer;
  x: Boolean;

label back;

begin
  try
    { TODO -oUser -cConsole ���C�� : �����ɃR�[�h���L�q���Ă������� }
    count := 50;
    repeat
      i := 0;
      x := false;
      repeat
        inc(i)
      until (count - 1 - i) mod 5 = 0;
      Writeln(i.ToString + '�R���ׂ܂���');
      dec(count, i);
      if count < 1 then
        break;
    back:
      x := true;
      Writeln(count.ToString);
      Writeln('[1-4]');
      Readln(s);
      i := s.ToInteger;
      if i > 4 then
        goto back;
      dec(count, s.ToInteger);
    until count <= 0;
    if x = true then
      Writeln('���Ȃ��͂��ɂ܂���')
    else
      Writeln('�킽���̂܂��ł�');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
