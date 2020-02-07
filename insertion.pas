program test;
uses wincrt;
type
    tab=array[1..26] of char;
var
    t:tab;
    n,p:integer;
    x:char;
procedure Inserte(var t:tab;n,p:integer;x:char);
var
    i:integer;
begin
	i:=n++1;
	while(i<>p) do 
	begin
		i:=i-1;
        t[i+1]:=t[i];
    end;
    t[p]:=x;
end;
procedure show(t:tab;n:integer);
var
    i:integer;
begin
	for i:=1 to n+1 do 
        writeln(t[i]);
end;
begin
	n:=7;x:='e';p:=3;
	t[1]:='a';
	t[2]:='b';
	t[3]:='c';
	t[4]:='d';
	t[5]:='e';
	t[6]:='f';
	t[7]:='g';
	Inserte(t,n,p,x);
	show(t,n);
end.