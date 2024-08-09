(define (domain thermostat)

(:predicates
	;HS locations
	(on)
	(off)

	;monitor locations
	(monitor_0)
	(monitor_1)
	(monitor_2)
)

(:functions
	;HS variables
	(x)  ;; temperature

	;monitor variables
	(running_time)  ;; time
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:process flow-on
	:parameters ()
	:precondition (and
		(on)
	)
	:effect (and
		(increase (x) (* #t 0.8))
	)
)

(:process flow-off
	:parameters ()
	:precondition (and
		(off)
	)
	:effect (and
		(increase (x) (* #t -0.2))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;;;;;;;;;;;;;;;;
;;; HS Invariants
;;;;;;;;;;;;;;;;;

(:constraint inv-on
	:parameters ()
	:condition (and
		(or
			(not (on))
			(<= x 22)
		)
	)
)

(:constraint inv-off
	:parameters ()
	:condition (and
		(or
			(not (off))
			(>= x 18)
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:process flow-monitor_0
	:parameters ()
	:precondition (and
		(monitor_0)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_1
	:parameters ()
	:precondition (and
		(monitor_1)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_2
	:parameters ()
	:precondition (and
		(monitor_2)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 running_time) ; t_1 - 0.05
		(> 1.05 running_time) ; t_1 + 0.05
		(<= 18.65 x) ; \phi_1
		(>= 18.75 x) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
	)
)

(:action validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.95 running_time) ; t_2 - 0.05
		(> 2.05 running_time) ; t_2 + 0.05
		(<= 18.45 x) ; \phi_2
		(>= 18.55 x) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
	)
)

)