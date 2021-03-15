upto(Low,High,_Step,Low) :- Low =< High.
upto(Low,High,Step,Var) :-
    Inc is Low+Step,
    Inc =< High,
    upto(Inc, High, Step, Var).


