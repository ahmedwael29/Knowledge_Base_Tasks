(deftemplate rect
  (slot height)
  (slot width))

(deffacts my-rectangles
  (rect (height 3) (width 7))
  (rect (height 5) (width 2)))
  (rect (height 8) (width 6)))

(defrule perimeter
  ?r <- (rect (height ?h) (width ?w))
  =>
  (bind ?perim (* 2 (+ ?h ?w)))
  (printout t "Perimeter = " ?perim crlf))

(reset)
(run)