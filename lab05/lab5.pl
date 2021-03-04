add_elem(Input, X, Output) :- member(X, Input) ->   Output = Input; Output = [X | Input].

depth_first_search([],Input, Output):- Output = Input. %empty list/null

depth_first_search([Head|Tail], Input, Output):- %checking head
    (   is_list(Head) ->  depth_first_search(Head, Input, Output1);
    					add_elem(Input, Head, Output1)), 
                        depth_first_search(Tail, Output1, Output).	%moving to tail and returning result

dfs_start(Input, Result):-depth_first_search(Input, [], Result).