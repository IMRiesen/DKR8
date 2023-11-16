program zad16;
var st:string;
begin
  writeln('Введи строку ');
  readln(st);
  delete(st,1,57);
  delete(st,41,100);
  writeln(st);
end.  