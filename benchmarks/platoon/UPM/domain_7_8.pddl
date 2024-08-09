(define (domain platoon)

(:requirements :fluents :typing :time)

(:predicates
	;HS locations
	(elf)
	(dreizehn)

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

	;monitor variables
	(running_time)  ;; time
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:process flow-elf
	:parameters ()
	:precondition (and
		(elf)
		(>= (x1) -50)
		(>= (x4) -50)
		(>= (x7) -50)
	)
	:effect (and
		(increase (x1) (* #t (x2)))
		(increase (x2) (* #t (+ (* (x3) -1) (u))))
		(increase (x3) (* #t (+ (* 1.605 (x1)) (+ (* 4.868 (x2)) (+ (* -3.5754 (x3)) (+ (* -0.8198 (x4)) (+ (* 0.427 (x5)) (+ (* -0.045 (x6)) (+ (* -0.1942 (x7)) (+ (* 0.3626 (x8)) (* -0.0946 (x9)))))))))) ))
		(increase (x4) (* #t (x5)))
		(increase (x5) (* #t (+ (x3) (* (x6) -1))))
		(increase (x6) (* #t (+ (* 0.8718 (x1)) (+ (* 3.814 (x2)) (+ (* -0.0754 (x3)) (+ (* 1.1936 (x4)) (+ (* 3.6258 (x5)) (+ (* -3.2396 (x6)) (+ (* -0.595 (x7)) (+ (* 0.1294 (x8)) (* -0.0796 (x9)))))))))) ))
		(increase (x7) (* #t (x8)))
		(increase (x8) (* #t (+ (x6) (* (x9) -1))))
		(increase (x9) (* #t (+ (* 0.7132 (x1)) (+ (* 3.573 (x2)) (+ (* -0.0964 (x3)) (+ (* 0.8472 (x4)) (+ (* 3.2568 (x5)) (+ (* -0.0876 (x6)) (+ (* 1.2726 (x7)) (+ (* 3.072 (x8)) (* -3.1356 (x9)))))))))) ))
	)
)

(:process flow-dreizehn
	:parameters ()
	:precondition (and
		(dreizehn)
		(>= (x1) -50)
		(>= (x4) -50)
		(>= (x7) -50)
	)
	:effect (and
		(increase (x1) (* #t (x2)))
		(increase (x2) (* #t (+ (* (x3) -1) (u))))
		(increase (x3) (* #t (+ (* 1.605 (x1)) (+ (* 4.868 (x2)) (* -3.5754 (x3)))) ))
		(increase (x4) (* #t (x5)))
		(increase (x5) (* #t (+ (x3) (* (x6) -1))))
		(increase (x6) (* #t (+ (* 1.1936 (x4)) (+ (* 3.6258 (x5)) (* -3.2396 (x6)))) ))
		(increase (x7) (* #t (x8)))
		(increase (x8) (* #t (+ (x6) (* (x9) -1))))
		(increase (x9) (* #t (+ (* 0.7132 (x1)) (+ (* 3.573 (x2)) (+ (* -0.0964 (x3)) (+ (* 0.8472 (x4)) (+ (* 3.2568 (x5)) (+ (* -0.0876 (x6)) (+ (* 1.2726 (x7)) (+ (* 3.072 (x8)) (* -3.1356 (x9)))))))))) ))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(:action validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 (running_time)) ; t_1 - 0.05
		(> 1.05 (running_time)) ; t_1 + 0.05
		(<= -1.618 (x1)) ; \phi_1
		(>= -1.518 (x1)) ; \phi_1
		(<= -0.127 (x4)) ; \phi_1
		(>= -0.027 (x4)) ; \phi_1
		(<= -0.07 (x7)) ; \phi_1
		(>= 0.03 (x7)) ; \phi_1
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
		(<= 1.95 (running_time)) ; t_2 - 0.05
		(> 2.05 (running_time)) ; t_2 + 0.05
		(<= -4.189 (x1)) ; \phi_2
		(>= -4.089 (x1)) ; \phi_2
		(<= -0.636 (x4)) ; \phi_2
		(>= -0.536 (x4)) ; \phi_2
		(<= -0.218 (x7)) ; \phi_2
		(>= -0.118 (x7)) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
	)
)

(:action validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.95 (running_time)) ; t_3 - 0.05
		(> 3.05 (running_time)) ; t_3 + 0.05
		(<= -6.145 (x1)) ; \phi_3
		(>= -6.045 (x1)) ; \phi_3
		(<= -1.453 (x4)) ; \phi_3
		(>= -1.353 (x4)) ; \phi_3
		(<= -0.506 (x7)) ; \phi_3
		(>= -0.406 (x7)) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
	)
)

(:action validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.95 (running_time)) ; t_4 - 0.05
		(> 4.05 (running_time)) ; t_4 + 0.05
		(<= -7.494 (x1)) ; \phi_4
		(>= -7.394 (x1)) ; \phi_4
		(<= -2.212 (x4)) ; \phi_4
		(>= -2.112 (x4)) ; \phi_4
		(<= -0.831 (x7)) ; \phi_4
		(>= -0.731 (x7)) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
	)
)

(:action validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.95 (running_time)) ; t_5 - 0.05
		(> 5.05 (running_time)) ; t_5 + 0.05
		(<= -8.491 (x1)) ; \phi_5
		(>= -8.391 (x1)) ; \phi_5
		(<= -2.749 (x4)) ; \phi_5
		(>= -2.649 (x4)) ; \phi_5
		(<= -1.098 (x7)) ; \phi_5
		(>= -0.998 (x7)) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
	)
)

(:action validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.95 (running_time)) ; t_6 - 0.05
		(> 6.05 (running_time)) ; t_6 + 0.05
		(<= -9.264 (x1)) ; \phi_6
		(>= -9.164 (x1)) ; \phi_6
		(<= -3.086 (x4)) ; \phi_6
		(>= -2.986 (x4)) ; \phi_6
		(<= -1.271 (x7)) ; \phi_6
		(>= -1.171 (x7)) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
	)
)

(:action validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.95 (running_time)) ; t_7 - 0.05
		(> 7.05 (running_time)) ; t_7 + 0.05
		(<= -9.857 (x1)) ; \phi_7
		(>= -9.757 (x1)) ; \phi_7
		(<= -3.301 (x4)) ; \phi_7
		(>= -3.201 (x4)) ; \phi_7
		(<= -1.366 (x7)) ; \phi_7
		(>= -1.266 (x7)) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
	)
)

(:action validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.95 (running_time)) ; t_8 - 0.05
		(> 8.05 (running_time)) ; t_8 + 0.05
		(<= -10.299 (x1)) ; \phi_8
		(>= -10.199 (x1)) ; \phi_8
		(<= -3.45 (x4)) ; \phi_8
		(>= -3.35 (x4)) ; \phi_8
		(<= -1.416 (x7)) ; \phi_8
		(>= -1.316 (x7)) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
	)
)

)