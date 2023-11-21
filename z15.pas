program zad15;
var st,last:string; dlina,i,x,k,first,m:integer;
begin
writeln ('Введите строку');
readln (st);
dlina := length(st);
  if (st[1] = 'a') and (st[2] = 'b') and (st[3] = 'c') then begin
    st[1] := 'w';
    st[2] := 'w';
    st[3] := 'w';
  end
  else
      st := st + 'zzz';
writeln (st);
end.
