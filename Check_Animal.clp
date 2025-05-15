(deftemplate animal
  (slot species))

(deffacts my-animals
  (animal (species duck))
  (animal (species turtle))
  (animal (species cat))
  (animal (species dog)))

(defrule check_animal
  ?a <- (animal (species ?type))
  (test (or (eq ?type duck) (eq ?type turtle)))
  =>
  (printout t "Animal is a " ?type "." crlf))

(reset)
(run)