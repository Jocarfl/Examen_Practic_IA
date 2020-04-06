(deffacts datos 

(robot 0 platos 0)

(platos 3 mesa 3)
(platos 2 mesa 2)
(mesa 3 platos 4)
(mesa 1 platos 2)

(mesa 1)
(mesa 2)
(mesa 3)
(mesa 4)

)

(defrule llevar-platos-cocina-a-mesa
?f <- (robot ?pr platos ?cr)
?f1 <- (platos ?cp mesa ?nm)

(test (= ?pr 0 ))
=>
)

(defrule llevar-platos-mesa-a-cocina
?f <- (robot ?pr platos ?cr)
?f1 <- (platos ?cp mesa ?nm)

(test (= ?pr ?nm ))
=>
(assert (robot ?nm platos 0 ))
)