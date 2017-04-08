program tower2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function tower(count, A, B: integer): integer;
var
  i: integer;
begin
  if count <= 0 then
  begin
    result := 0;
    Exit;
  end;
  i := 1;
  while i <= 3 do
  begin
    if (i <> A) and (i <> B) then
      break;
    inc(i);
  end;
  result := tower(count - 1, A, i) + 1;
  Write(A.ToString + '=>' + B.ToString + ' ');
  inc(result, tower(count - 1, i, B));
end;

var
  s: string;

begin
  try
    { TODO -oUser -cConsole メイン : ここにコードを記述してください }
    repeat
      Readln(s);
      s:=tower(s.ToInteger, 1, 3).ToString;
      Writeln;
      Write(s);
    until false;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
