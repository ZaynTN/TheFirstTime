program triparselection;
uses wincrt;
type
    tab=array[1..26] of char;
var
    t:tab;
procedure max(var t:tab);
var
    tablength,Position,InsideWhile,i:integer;
    maxx,Trade:char;
    tr:boolean;
begin
	tablength:=0;
	while(tablength<7) do 
	begin
		tablength:=tablength+1;InsideWhile:=tablength;maxx:=t[tablength];Position:=0;tr:=false;
        while (InsideWhile<8) do 
        begin 
            if maxx<t[InsideWhile] then
            begin
                maxx:=t[InsideWhile];
                Position:=InsideWhile;
                tr:=true;
            end;
            InsideWhile:=InsideWhile+1;
        end;
        if tr = true then 
        begin
            Trade:=t[tablength];
            t[tablength]:=maxx;
            t[Position]:=Trade;
        end;
    end;
    for i:=1 to 7 do 
        writeln(t[i]);
end;

begin
	t[1]:='a';
	t[2]:='b';
	t[3]:='c';
	t[4]:='d';
	t[5]:='p';
	t[6]:='e';
	t[7]:='w';
	max(t);
end.