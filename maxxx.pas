program max;
uses wincrt;
type
    tab=array[1..26] of char;{u can put integer , real,string}
var
    t:tab;
    res:char;
function maxx(t:tab):char; {u can put integer , real,string}
var
    tablength:integer;
    maxxx:char;
begin
	tablength:=0;
	maxxx:=t[1];
	while(tablength<length(t))do 
	begin
		tablength:=tablength+1;
		if t[tablength] > maxxx then
            maxxx:=t[tablength];
        if  not (t[tablength+1]   in ['a'..'z']) then
            tablength:=length(t);
    end;
    maxx:=maxxx;
end;

begin
	t[1]:='a';
	t[2]:='b';
	t[3]:='c';
	t[4]:='d';
	res:=maxx(t);
	write(res);
end.