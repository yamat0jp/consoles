program dokudango;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  s: string;
  count, i: integer;
  x: Boolean;

label first, back;

begin
  try
    { TODO -oUser -cConsole ���C�� : �����ɃR�[�h���L�q���Ă������� }
    count := 51;
    goto first;
    repeat
      i := 0;
    first:
      x := false;
      repeat
        inc(i)
      until ((count - 1 - i) mod 5 = 0) or (i = 5);
      if i = 5 then
      begin
        Randomize;
        i := Random(4) + 1;
      end;
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
