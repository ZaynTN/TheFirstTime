program test;
uses wincrt;
type
    tab=array[1..7] of char;
var
    t:tab;
procedure m(var t:tab);
var
    e1,e2,e4:integer;
    e5:boolean;
    e3:char;
begin
	e1:=0;e4:=0;
	while(e1<7) do 
    begin
    	e1:=e1+1;
    	e2:=0;
    	while(e2<7) do 
    	begin
    		e2:=e2+1;
    		e5:= (t[e2+1]in ['a'..'z'] );
    		if e5 = true then
    		begin
                if t[e2+1]>t[e2] then
                begin
                    e3:=t[e2];
                    t[e2]:=t[e2+1];
                    t[e2+1]:=e3;
                end;
            end;
        end;
    end;
    while(e4<7) do
    begin
    	e4:=e4+1;
    	writeln('=======>','    ' ,t[e4],'    ' ,'<=======');
    end;
end;
begin
	t[1]:='b';
	t[2]:='b';
	t[3]:='c';
	t[4]:='d';
	t[5]:='e';
	t[6]:='f';
	t[7]:='g';
	m(t);
end.
