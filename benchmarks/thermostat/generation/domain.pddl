;Header and description

(define (domain thermostat)

(:types 
     observation 
)

(:predicates
	; locations
	(on)
    (off)

    ; decision
    (observed ?x - observation)		
)


(:functions
    (heating_rate)
    (cooling_rate)

	; variables and time
    (x)  ;; temperature
		
    (running_time)

    ;observables
    (time_obs ?x - observation)
    (x_obs ?x - observation)

    (time_precision)
    (x_error)
)


(:process time_pass
    :parameters ()
    :effect (and
        (increase (running_time) (* #t 1.0))
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;



(:process flow-on
    :parameters ()
    :precondition (and
        (on)
    )
    :effect (and
		(increase (x) (* #t heating_rate))
    )
)

(:process flow-off
    :parameters ()
    :precondition (and
        (off)
    )
    :effect (and
		(increase (x) (* #t cooling_rate))
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;

(:action turn-on
    :parameters ()
    :precondition (and
        (off)
        (< x 19)
    )
    :effect (and
        (not (off))
        (on)
    )
)

(:action turn-off
    :parameters ()
    :precondition (and
        (on)
        (> x 21)
    )
    :effect (and
        (not (on))
        (off)
    )
)

;;;;;;;;;;;;;;
;;; Invariants
;;;;;;;;;;;;;;


(:constraint inv-on
    :parameters ()
    :condition 
        (and
            (or
                (not (on))
                (<= x 22)
            )
        )
)

(:constraint inv-off
    :parameters ()
    :condition 
        (and
            (or
                (not (off))
                (>= x 18)
            )
        )
)


;;;;;;;;;;;;;;;;
;;; Verification
;;;;;;;;;;;;;;;;

(:event validate
    :parameters (?x - observation)
    :precondition (and
        (not (observed ?x))
		(<= (- (time_obs ?x) (/ time_precision 2)) running_time)
		(> (+ (time_obs ?x) (/ time_precision 2)) running_time)
        (<= (- (x_obs ?x) x_error) x)
        (>= (+ (x_obs ?x) x_error) x)
    )
    :effect (and
        (observed ?x)
    )
)


)
