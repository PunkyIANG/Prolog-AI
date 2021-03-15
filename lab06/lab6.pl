initial(0).
final(5).

arc(0, 0, a).

arc(0, 1, b).
arc(1, 2, c).

arc(2, 3, b).
arc(3, 2, c).

arc(2, 4, c).
arc(4, 5, d).

arc(5, 6, c).
arc(6, 5, d).

recognize(Node, []) :- final(Node).
recognize(Node, [Head|Tail]) :- arc(Node, Node1, Head), recognize(Node1, Tail).

start(List) :- initial(Node), recognize(Node, List).