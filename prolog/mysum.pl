% q2sumNum(D,Val1 ,Val):-
%   (D >=32-> nl;write("")), #% if day more than or equal 32 new line to print empty
%   (D >= 32-> Val = Val1; write("")), #% if day more than or equal 32 Val is Val1 if not will print empty
%   (D >= 32-> write("Val =");write("")), #% if day more than or equal 32 print "Val =" if not will print empty
%   (D >= 32-> write(Val1);write("")), #% if day more than or equal 32 print Val1 if not will print empty
%   D >= 0, #% D is more than 0
%   D =< 32, #% D is less than or equal 32
%   write(D), write(' '),
%   Val2 is Val1 + D,
%   D1 is D+7,
%   sumNum(N1,Val2,Val). #% call sumNum rule

may(1,sun).
may(2,mon).
may(3,tue).
may(4,wed).
may(5,thu).
may(6,fri).
may(7,sat).

may(Date,Day):-
    number(Date),
    Date > 7,
    Date < 32,
    M is Date mod 7,
    (M = 0 -> N is 7; N is M ),
    may(N,Day).

% added7(D):-
%     D >= 0,
%     D =< 31,
%     write(D),write(''),
%     D1 is D+7,
%     added7(D1).

% dates_in_day(X):-
%     may(Date,X),
%     added7(Date).



sumNum(D,Val1 ,Val):-
   (D >= 32-> nl; write("")), 
   (D >= 32-> Val = Val1; write("")), 
   (D >= 32-> write("Val ="); write("")), 
   (D >= 32-> write(Val1); write("")), 
   D >= 0, 
   D =< 32, 
   write(D), write(' '),
   Val2 is Val1 + D,
   D1 is D+7,
   sumNum(D1,Val2,Val). 


dates_in_day(X):-
    may(Date,X),
    sumNum(Date).

mySum(Day,Val):-
  %  # dates_in_day(Day),
    may(Date,Day),
    sumNum(Date,0,Val).
