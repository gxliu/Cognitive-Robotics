(define (domain Trains)
  (:requirements :strips :conditional-effects :existential-preconditions)
  (:predicates (engine ?e)
	       (at ?thing ?city); qualcosa si trova in una città
	       (coupled ?e ?car); il carro è attaccato a qualcosa
	       (oranges ?o); arance
	       (boxcar ?car); carro da trasporto merce
	       (empty ?car); carro vuoto
	       (bananas ?b); banane
	       (loose ?car); carro staccato da motrice
	       (connects ?tr ?c1 ?c2); il binario tr college due città
	       (in ?thing ?car); qualcosa nel carro
	       (city ?c); città
	       (track ?tr); binaroio
	       (car ?c); carro
	       (comm ?c)); consegna di merce

  (:action mv-engine
    :parameters (?eng ?cityone ?citytwo ?track ?car)
    ;; ?car is a "hidden" parameter
    :precondition (and (engine ?eng) (at ?eng ?cityone) 
		       (connects ?track ?cityone ?citytwo))
    :effect (and (at ?eng ?citytwo) (not (at ?eng ?cityone))
		 (when (coupled ?eng ?car) 
		   (and (at ?car ?citytwo)
			(not (at ?car ?cityone))))))

  (:action ld-oranges
    :parameters (?ors ?car ?city)
    :precondition (and (oranges ?ors) (boxcar ?car) (empty ?car)
		       (at ?ors ?city) (at ?car ?city) )
    :effect (and (not (empty ?car)) (in ?ors ?car) 
		 (not (at ?ors ?city))))

  (:action ld-bananas
    :parameters (?bas ?car ?city)
    :precondition (and (bananas ?bas) (boxcar ?car) (empty ?car)
		       (at ?bas ?city) (at ?car ?city))
    :effect (and (not (empty ?car)) (in ?bas ?car) 
		 (not (at ?bas ?city))) )
  

  (:action unload
    :parameters (?comm ?car ?city)
    :precondition (and (in ?comm ?car) (at ?car ?city))
    :effect (and (not (in ?comm ?car)) (empty ?car) (at ?comm ?city)))

  (:action couple
    :parameters (?eng ?car ?city)
    :precondition (and (engine ?eng) (car ?car) (loose ?car) 
		       (at ?eng ?city) (at ?car ?city))
    :effect (and (coupled ?eng ?car) (not (loose ?car))))
  
  (:action uncouple
    :parameters (?eng ?car)
    :precondition (coupled ?eng ?car)
    :effect (and (loose ?car) (not (coupled ?eng ?car))))
)
