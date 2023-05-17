/* 
    Implementación de un chatbot super simple
    Uso: 
        jarvis([me, llamo, Emanuel], Respuesta).
        jarvis([me, siento, cansado], Respuesta).
 */

jarvis(Stimuli, Response) :-
    template(InternalStimuli, InternalResponse),
    match(InternalStimuli, Stimuli),
    match(InternalResponse, Response),
    !.

/* defino las preguntas y respuestas */

template([s([me, llamo]),s(X)], [s([como, estas]),s(X),w('?')]).

/* logica de matcheo de preguntas/respuestas */

match([],[]).
match([Item|Items],[Word|Words]) :-
    match(Item, Items, Word, Words).

match(w(Word), Items, Word, Words) :-
    match(Items, Words).

match(s([Word|Seg]), Items, Word, Words0) :-
    append(Seg, Words1, Words0),
    match(Items, Words1).
