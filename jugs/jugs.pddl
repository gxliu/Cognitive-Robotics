(define (domain Jugs)
(:requirements :typing :fluents :conditional-effects)
(:types jug nonjug)

(:functions (capacity ?j - jug)
	    (contents ?j - jug)
            )

(:action fill
 :parameters (?j - jug)
 :precondition (< (contents ?j) (capacity ?j))
 :effect (and (assign (contents ?j) (capacity ?j))))

(:action empty
 :parameters (?j - jug)
 :precondition (> (contents ?j) 0)
 :effect (and (assign (contents ?j) 0)))

(:action pour 
 :parameters (?j1 ?j2 - jug)
 :precondition (> (contents ?j1) 0)
 :effect (and (when (<= (+ (contents ?j1) (contents ?j2)) (capacity ?j2))
				(and (assign (contents ?j1) 0)
			         (increase (contents ?j2) (contents ?j1))))
              (when (> (+ (contents ?j1) (contents ?j2)) (capacity ?j2))
                       (and (assign (contents ?j2) (capacity ?j2))
                            (decrease (contents ?j1) (- (capacity ?j2) (contents ?j2)))))))

)
