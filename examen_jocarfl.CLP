(deffacts datos 

(robot 0 platos 0)

(platos 3 mesa 3)
(platos 2 mesa 2)
(mesa 3 platos 4)
(mesa 1 platos 2)

)

(defrule llevar-platos-cocina-a-mesa
?f <- (robot ?pr platos ?cr)
?f1 <- (platos ?cp mesa ?nm)

(test (= ?pr 0 ))
=>
(assert (robot ?nm platos 0 ))
(retract ?f1)
(retract ?f)
)

(defrule llevar-platos-mesa-a-cocina
?f <- (robot ?pr platos ?cr)
?f1 <- (mesa ?nm platos ?cp)

(test (= ?pr ?nm ))
(test (<= ?cr 4))
(test (<= ?cp 4))
=>
(assert (robot ?nm platos ?cp))
(retract ?f1)
(retract ?f)
)

(defrule comprobar-si-caben-platos
?f <- (robot ?pr platos ?cr)
?f1 <- (mesa ?nm platos ?cp)

(test (= ?pr ?nm ))
(test (<= ?cr 4))
(test (<= ?cp 4))
=>
(assert (robot ?nm platos ?cp))
)