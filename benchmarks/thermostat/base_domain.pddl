(define (domain thermostat)

    (:predicates ; propositional variables
        (on)
        (off)
    )

    (:functions ; numeric variables
        (temp) 
    )

    (:process flow-on
        :parameters ()
        :precondition (and (on))
        :effect (increase (temp) (* #t 0.8)) 
    )

    (:process flow-off
        :parameters ()
        :precondition (and (off))
        :effect (increase (temp) (* #t -0.2))
    )

    (:constraint invariant-on
        :parameters ()
        :condition (or (not (on)) (<= temp 22))
    )

    (:constraint invariant-off
        :parameters ()
        :condition (or (not (off)) (>= temp 18))
    )

    (:action switch-on
        :parameters ()
        :precondition (and (off) (< temp 19))
        :effect (and (not (off)) (on))
    )

    (:action switch-off
        :parameters ()
        :precondition (and (on) (> temp 21))
        :effect (and (not (on)) (off))
    )

    (:event automatic-switch-on
        :parameters ()
        :precondition (and (off) (<= temp 18))
        :effect (and (not (off)) (on))
    )

    (:event automatic-switch-off
        :parameters ()
        :precondition (and (on) (>= temp 22))
        :effect (and (not (on)) (off))
    )

)