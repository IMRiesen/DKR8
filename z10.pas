Program Zad10;
var st,last:string; dlina,i,x,k,first,m:integer;
begin
writeln ('Введите строку');
readln (st);
dlina := length(st);
for i := 1 to dlina do begin
  if (st[i] = 'a') and (st[i+1] = 'b') and (st[i+2] = 'c') then begin
    st[i] := 'w';
    st[i+1] := 'w';
    st[i+2] := 'w';
  end
  else
    if i = dlina then begin
      st := st + 'zzz';
    end;
end;
writeln (st);
end.