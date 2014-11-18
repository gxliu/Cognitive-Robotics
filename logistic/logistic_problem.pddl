 (define (problem logistics)  
  (:domain logistics) 
  (:objects package1 package2 package3 package4  
      bos-truck la-truck airplane1 airplane2 
      bos-po la-po bos-airport la-airport) 
(:init (OBJ package1) 
   (OBJ package2) 
   (OBJ package3) 
   (OBJ package4) 
   (TRUCK bos-truck) 
   (TRUCK la-truck) 
   (AIRPLANE airplane1) 
   (AIRPLANE airplane2) 
   (LOCATION bos-po) 
   (LOCATION la-po) 
   (LOCATION bos-airport) 
   (LOCATION la-airport) 
   (AIRPORT bos-airport) 
   (AIRPORT la-airport) 
   (CITY bos) 
   (CITY la) 
   (IN-CITY bos-po bos) 
   (IN-CITY bos-airport bos) 
   (IN-CITY la-po la) 
   (IN-CITY la-airport la) 
   (at package1 la-po) 
   (at package2 la-po) 
   (at package3 la-po) 
   (at package4 bos-po) 
   (at airplane1 bos-airport) 
   (at airplane2 bos-airport) 
   (at bos-truck bos-po) 
   (at la-truck la-po)) 
 
(:goal (and (at package1 bos-po) 
        (at package2 bos-airport) 
        (at package3 la-po) 
        (at package4 la-airport) 
  ) 