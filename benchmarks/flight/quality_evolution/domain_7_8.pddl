(define (domain flight)

(:predicates
	;HS locations
	(flying-straight)
	(adjusting-left)
	(adjusting-right)

	;monitor locations
	(monitor_0)
	(monitor_1)
	(monitor_2)
	(monitor_3)
	(monitor_4)
	(monitor_5)
	(monitor_6)
	(monitor_7)
	(monitor_8)
)

(:functions
	;HS variables
	(x1) ; coordinate x
	(x2) ; coordinate y
	(theta) ; orientation
	(v) ; linear speed
	(w) ; angular speed

	;monitor variables
	(running_time)  ;; time

	;objective function
	(max_roughness)
	(roughness)

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:process flow-flying-straight
	:parameters ()
	:precondition (and
		(flying-straight)
	)
	:effect (and
		(increase (x1) (* #t (* (v) (cos (theta)))))
		(increase (x2) (* #t (* (v) (sin (theta)))))
	)
)

(:process flow-adjusting-left
	:parameters ()
	:precondition (and
		(adjusting-left)
	)
	:effect (and
		(increase (x1) (* #t (* (v) (cos (theta)))))
		(increase (x2) (* #t (* (v) (sin (theta)))))
		(increase (theta) (* #t 0.31415927))
	)
)

(:process flow-adjusting-right
	:parameters ()
	:precondition (and
		(adjusting-right)
	)
	:effect (and
		(increase (x1) (* #t (* (v) (cos (theta)))))
		(increase (x2) (* #t (* (v) (sin (theta)))))
		(increase (theta) (* #t -0.31415927))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action stop-adjust-left
	:parameters ()
	:precondition (and
		(adjusting-left)
	)
	:effect (and
		(not (adjusting-left))
		(flying-straight)
	)
)

(:action stop-adjust-right
	:parameters ()
	:precondition (and
		(adjusting-right)
	)
	:effect (and
		(not (adjusting-right))
		(flying-straight)
	)
)

(:action adjust-left
	:parameters ()
	:precondition (and
		(flying-straight)
	)
	:effect (and
		(not (flying-straight))
		(adjusting-left)
	)
)

(:action adjust-right
	:parameters ()
	:precondition (and
		(flying-straight)
	)
	:effect (and
		(not (flying-straight))
		(adjusting-right)
	)
)

(:action toggle-adjust-LR
	:parameters ()
	:precondition (and
		(adjusting-left)
	)
	:effect (and
		(not (adjusting-left))
		(adjusting-right)
	)
)

(:action toggle-adjust-LR
	:parameters ()
	:precondition (and
		(adjusting-right)
	)
	:effect (and
		(not (adjusting-right))
		(adjusting-left)
	)
)

;;;;;;;;;;;;;;;;;
;;; HS Invariants
;;;;;;;;;;;;;;;;;

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

(:process flow-monitor_3
	:parameters ()
	:precondition (and
		(monitor_3)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_4
	:parameters ()
	:precondition (and
		(monitor_4)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_5
	:parameters ()
	:precondition (and
		(monitor_5)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_6
	:parameters ()
	:precondition (and
		(monitor_6)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_7
	:parameters ()
	:precondition (and
		(monitor_7)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_8
	:parameters ()
	:precondition (and
		(monitor_8)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:event validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.995 running_time) ; t_1 - 0.05
		(> 1.005 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 14.854) 2) (^ (- x2 16.105) 2)) (^ 10 2) ) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
		(increase (roughness) (+ (^ (- x1 14.854) 2) (^ (- x2 16.105) 2)))
	)
)

(:event validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.995 running_time) ; t_2 - 0.05
		(> 2.005 running_time) ; t_2 + 0.05
		(< (+ (^ (- x1 24.005) 2) (^ (- x2 36.012) 2)) (^ 10 2) ) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
		(increase (roughness) (+ (^ (- x1 24.005) 2) (^ (- x2 36.012) 2)))
	)
)

(:event validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.995 running_time) ; t_3 - 0.05
		(> 3.005 running_time) ; t_3 + 0.05
		(< (+ (^ (- x1 26.556) 2) (^ (- x2 57.773) 2)) (^ 10 2) ) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
		(increase (roughness) (+ (^ (- x1 26.556) 2) (^ (- x2 57.773) 2)))
	)
)

(:event validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.995 running_time) ; t_4 - 0.05
		(> 4.005 running_time) ; t_4 + 0.05
		(< (+ (^ (- x1 22.258) 2) (^ (- x2 79.257) 2)) (^ 10 2) ) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
		(increase (roughness) (+ (^ (- x1 22.258) 2) (^ (- x2 79.257) 2)))
	)
)

(:event validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.995 running_time) ; t_5 - 0.05
		(> 5.005 running_time) ; t_5 + 0.05
		(< (+ (^ (- x1 11.532) 2) (^ (- x2 98.361) 2)) (^ 10 2) ) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
		(increase (roughness) (+ (^ (- x1 11.532) 2) (^ (- x2 98.361) 2)))
	)
)

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.995 running_time) ; t_6 - 0.05
		(> 6.005 running_time) ; t_6 + 0.05
		(< (+ (^ (- x1 -4.574) 2) (^ (- x2 113.216) 2)) (^ 10 2) ) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
		(increase (roughness) (+ (^ (- x1 -4.574) 2) (^ (- x2 113.216) 2)))
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.995 running_time) ; t_7 - 0.05
		(> 7.005 running_time) ; t_7 + 0.05
		(< (+ (^ (- x1 -24.481) 2) (^ (- x2 122.366) 2)) (^ 10 2) ) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
		(increase (roughness) (+ (^ (- x1 -24.481) 2) (^ (- x2 122.366) 2)))
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.995 running_time) ; t_8 - 0.05
		(> 8.005 running_time) ; t_8 + 0.05
		(< (+ (^ (- x1 -46.241) 2) (^ (- x2 124.918) 2)) (^ 10 2) ) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
		(increase (roughness) (+ (^ (- x1 -46.241) 2) (^ (- x2 124.918) 2)))
	)
)

(:constraint roughness_bound
	:parameters ()
	:condition (and
		(< roughness max_roughness)
	)
)

)