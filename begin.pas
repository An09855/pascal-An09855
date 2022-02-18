uses crt;
var n,m,k,a,b,c,d,e:qword;
    the:double;
begin
    read(n,k,m);
    a:=n div k;
    b:=n mod k;
    if a>=m then
        writeln(k*m)
    else if a+(a+1)*b>=m then
        begin
            m:=m-a;
            the:=m/(a+1);
            if the <> trunc(m/(a+1)) then
                c:=trunc(the)+1
            else c:=trunc(the);
            m:=m-(a+1)*(c-1);
            writeln(c+k*(m-1));
        end
    else
        begin
            m:=m-(a+(a+1)*b);
            the:=m/a;
            if the <> trunc(m/a) then
                c:=trunc(the)+1
            else c:=trunc(the);
            m:=m-a*(c-1);
            writeln((c+b)+(k*(m-1)));
        end;
end.