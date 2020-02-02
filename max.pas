program test;
uses wincrt;
type
    tab=array[1..10] of integer;
var
    res:integer;
    T:tab;
function max(T:tab):integer;
var
    l,m:integer;
begin
	l:=0;m:=t[1];
	while (l<5) do
	begin
		l:=l+1;
		if t[l] > m then
            m:=t[l];
    end;
    max:=m;
end;
procedure remplir(var T:tab);
var
    i:integer;
begin
	for i:=1 to 5 do 
        readln(T[i]);
end;
begin
	remplir(T);
end.