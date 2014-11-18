(define (problem Trains2)
    (:domain Trains)
  (:objects avon bath corning dansville
		  tr1 tr2 tr3 tr4
		  e1 e2
		  bc1 bc2 bc3 bc4 
  ors1 bas1)
  (:init
   (city avon) (city bath) (city corning) (city dansville)
   (track tr1) (track tr2) (track tr3) (track tr4) 
   (connects tr1 avon bath) (connects tr1 bath avon)
   (connects tr2 bath corning) (connects tr2 corning bath)
   (connects tr3 avon dansville) (connects tr3 dansville avon)
   (connects tr4 dansville corning) (connects tr4 corning dansville)
   (engine e1) (engine e2)
   (car bc1) (car bc2) (car bc3) (car bc4) 
   (boxcar bc1) (boxcar bc2) (boxcar bc3) (boxcar bc4)
   (oranges ors1) (bananas bas1)
   (empty bc1) (empty bc2) (empty bc3) (empty bc4) 
   (loose bc1) (loose bc2) (loose bc3) (loose bc4) 
   (at e1 avon) (at bc1 bath) (at bc2 bath)
   (at bc3 dansville) (at bc4 corning)
   (at bas1 avon) (at ors1 bath)
   (at e2 bath) (at e3 corning))
  (:goal (AND (at ors1 dansville)(at bas1 dansville)))))

