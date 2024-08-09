;Header and description

(define (domain platoon)

(:types 
     observation 
)

(:predicates
	; locations
	(elf)
    (dreizehn)

    ; decision
    (observed ?x - observation)	

)


(:functions
	; variables and time
    (x1)
    (x2)
    (x3)
    (x4)
    (x5)
    (x6)
    (x7)
    (x8)
    (x9)
    (u)

    (running_time)

    ;observables
    (time_obs ?x - observation)
    (x1_obs ?x - observation)
    (x2_obs ?x - observation)
    (x3_obs ?x - observation)

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



(:process flow-elf
    :parameters ()
    :precondition (and
        (elf)
    )
    :effect (and
		(increase (x1) (* #t x2))
        (increase (x2) (* #t (+ (* x3 -1) u)))
        (increase (x3) (* #t (+ (* 1.605 x1) (+ (* 4.868 x2) (+ (* -3.5754 x3) (+ (* -0.8198 x4) (+ (* 0.427 x5) (+ (* -0.045 x6) (+ (* -0.1942 x7) (+ (* 0.3626 x8) (* -0.0946 x9))))))))) ))
		(increase (x4) (* #t x5))
        (increase (x5) (* #t (+ x3 (* x6 -1))))
        (increase (x6) (* #t (+ (* 0.8718 x1) (+ (* 3.814 x2) (+ (* -0.0754 x3) (+ (* 1.1936 x4) (+ (* 3.6258 x5) (+ (* -3.2396 x6) (+ (* -0.595 x7) (+ (* 0.1294 x8) (* -0.0796 x9))))))))) ))
        (increase (x7) (* #t x8))
        (increase (x8) (* #t (+ x6 (* x9 -1))))
        (increase (x9) (* #t (+ (* 0.7132 x1) (+ (* 3.573 x2) (+ (* -0.0964 x3) (+ (* 0.8472 x4) (+ (* 3.2568 x5) (+ (* -0.0876 x6) (+ (* 1.2726 x7) (+ (* 3.072 x8) (* -3.1356 x9))))))))) ))
        (increase (time) (* #t 1))
    )
)


(:process flow-dreizehn
    :parameters ()
    :precondition (and
        (dreizehn)
    )
    :effect (and
		(increase (x1) (* #t x2))
        (increase (x2) (* #t (+ (* x3 -1) u)))
        (increase (x3) (* #t (+ (* 1.605 x1) (+ (* 4.868 x2) (* -3.5754 x3))) ))
		(increase (x4) (* #t x5))
        (increase (x5) (* #t (+ x3 (* x6 -1))))
        (increase (x6) (* #t (+ (* 1.1936 x4) (+ (* 3.6258 x5) (* -3.2396 x6))) ))
        (increase (x7) (* #t x8))
        (increase (x8) (* #t (+ x6 (* x9 -1))))
        (increase (x9) (* #t (+ (* 0.7132 x1) (+ (* 3.573 x2) (+ (* -0.0964 x3) (+ (* 0.8472 x4) (+ (* 3.2568 x5) (+ (* -0.0876 x6) (+ (* 1.2726 x7) (+ (* 3.072 x8) (* -3.1356 x9))))))))) ))
        (increase (time) (* #t 1))
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;

(:action disconnect
    :parameters ()
    :precondition (and
        (elf)
    )
    :effect (and
        (not (elf))
        (dreizehn)
    )
)

(:action reconnect
    :parameters ()
    :precondition (and
        (dreizehn)
    )
    :effect (and
        (not (dreizehn))
        (elf)
    )
)


;;;;;;;;;;;;;;
;;; Invariants
;;;;;;;;;;;;;;

(:constraint min_distance
    :parameters ()
    :condition 
        (and
            (>= x1 -50)
            (>= x4 -50)
            (>= x7 -50)
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
        (<= (- (x1_obs ?x) x_error) x1)
        (>= (+ (x1_obs ?x) x_error) x1)
        (<= (- (x4_obs ?x) x_error) x4)
        (>= (+ (x4_obs ?x) x_error) x4)
        (<= (- (x7_obs ?x) x_error) x7)
        (>= (+ (x7_obs ?x) x_error) x7)
    )
    :effect (and
        (observed ?x)
    )
)


)
