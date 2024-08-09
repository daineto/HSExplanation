(define (domain platoon)

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
	(monitor_9)
	(monitor_10)
	(monitor_11)
	(monitor_12)
	(monitor_13)
	(monitor_14)
	(monitor_15)
	(monitor_16)
	(monitor_17)
	(monitor_18)
	(monitor_19)
	(monitor_20)
	(monitor_21)
	(monitor_22)
	(monitor_23)
	(monitor_24)
	(monitor_25)
	(monitor_26)
	(monitor_27)
	(monitor_28)
	(monitor_29)
	(monitor_30)
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

;;;;;;;;;;;;;;;;;
;;; HS Invariants
;;;;;;;;;;;;;;;;;

(:constraint inv-elf
	:parameters ()
	:condition (and
		(or
			(not (elf))
			(and
				(>= x1 -50)
				(>= x4 -50)
				(>= x7 -50)
			)
		)
	)
)

(:constraint inv-dreizehn
	:parameters ()
	:condition (and
		(or
			(not (dreizehn))
			(and
				(>= x1 -50)
				(>= x4 -50)
				(>= x7 -50)
			)
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

(:process flow-monitor_9
	:parameters ()
	:precondition (and
		(monitor_9)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_10
	:parameters ()
	:precondition (and
		(monitor_10)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_11
	:parameters ()
	:precondition (and
		(monitor_11)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_12
	:parameters ()
	:precondition (and
		(monitor_12)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_13
	:parameters ()
	:precondition (and
		(monitor_13)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_14
	:parameters ()
	:precondition (and
		(monitor_14)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_15
	:parameters ()
	:precondition (and
		(monitor_15)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_16
	:parameters ()
	:precondition (and
		(monitor_16)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_17
	:parameters ()
	:precondition (and
		(monitor_17)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_18
	:parameters ()
	:precondition (and
		(monitor_18)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_19
	:parameters ()
	:precondition (and
		(monitor_19)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_20
	:parameters ()
	:precondition (and
		(monitor_20)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_21
	:parameters ()
	:precondition (and
		(monitor_21)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_22
	:parameters ()
	:precondition (and
		(monitor_22)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_23
	:parameters ()
	:precondition (and
		(monitor_23)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_24
	:parameters ()
	:precondition (and
		(monitor_24)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_25
	:parameters ()
	:precondition (and
		(monitor_25)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_26
	:parameters ()
	:precondition (and
		(monitor_26)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_27
	:parameters ()
	:precondition (and
		(monitor_27)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_28
	:parameters ()
	:precondition (and
		(monitor_28)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_29
	:parameters ()
	:precondition (and
		(monitor_29)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_30
	:parameters ()
	:precondition (and
		(monitor_30)
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
		(<= -1.618 x1) ; \phi_1
		(>= -1.518 x1) ; \phi_1
		(<= -0.127 x4) ; \phi_1
		(>= -0.027 x4) ; \phi_1
		(<= -0.07 x7) ; \phi_1
		(>= 0.03 x7) ; \phi_1
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
		(<= -4.189 x1) ; \phi_2
		(>= -4.089 x1) ; \phi_2
		(<= -0.636 x4) ; \phi_2
		(>= -0.536 x4) ; \phi_2
		(<= -0.218 x7) ; \phi_2
		(>= -0.118 x7) ; \phi_2
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
		(<= 2.95 running_time) ; t_3 - 0.05
		(> 3.05 running_time) ; t_3 + 0.05
		(<= -6.145 x1) ; \phi_3
		(>= -6.045 x1) ; \phi_3
		(<= -1.453 x4) ; \phi_3
		(>= -1.353 x4) ; \phi_3
		(<= -0.506 x7) ; \phi_3
		(>= -0.406 x7) ; \phi_3
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
		(<= 3.95 running_time) ; t_4 - 0.05
		(> 4.05 running_time) ; t_4 + 0.05
		(<= -7.494 x1) ; \phi_4
		(>= -7.394 x1) ; \phi_4
		(<= -2.212 x4) ; \phi_4
		(>= -2.112 x4) ; \phi_4
		(<= -0.831 x7) ; \phi_4
		(>= -0.731 x7) ; \phi_4
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
		(<= 4.95 running_time) ; t_5 - 0.05
		(> 5.05 running_time) ; t_5 + 0.05
		(<= -8.491 x1) ; \phi_5
		(>= -8.391 x1) ; \phi_5
		(<= -2.749 x4) ; \phi_5
		(>= -2.649 x4) ; \phi_5
		(<= -1.098 x7) ; \phi_5
		(>= -0.998 x7) ; \phi_5
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
		(<= 5.95 running_time) ; t_6 - 0.05
		(> 6.05 running_time) ; t_6 + 0.05
		(<= -9.264 x1) ; \phi_6
		(>= -9.164 x1) ; \phi_6
		(<= -3.086 x4) ; \phi_6
		(>= -2.986 x4) ; \phi_6
		(<= -1.271 x7) ; \phi_6
		(>= -1.171 x7) ; \phi_6
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
		(<= 6.95 running_time) ; t_7 - 0.05
		(> 7.05 running_time) ; t_7 + 0.05
		(<= -9.857 x1) ; \phi_7
		(>= -9.757 x1) ; \phi_7
		(<= -3.301 x4) ; \phi_7
		(>= -3.201 x4) ; \phi_7
		(<= -1.366 x7) ; \phi_7
		(>= -1.266 x7) ; \phi_7
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
		(<= 7.95 running_time) ; t_8 - 0.05
		(> 8.05 running_time) ; t_8 + 0.05
		(<= -10.299 x1) ; \phi_8
		(>= -10.199 x1) ; \phi_8
		(<= -3.45 x4) ; \phi_8
		(>= -3.35 x4) ; \phi_8
		(<= -1.416 x7) ; \phi_8
		(>= -1.316 x7) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
	)
)

(:action validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.95 running_time) ; t_9 - 0.05
		(> 9.05 running_time) ; t_9 + 0.05
		(<= -10.618 x1) ; \phi_9
		(>= -10.518 x1) ; \phi_9
		(<= -3.559 x4) ; \phi_9
		(>= -3.459 x4) ; \phi_9
		(<= -1.447 x7) ; \phi_9
		(>= -1.347 x7) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
	)
)

(:action validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.95 running_time) ; t_10 - 0.05
		(> 10.05 running_time) ; t_10 + 0.05
		(<= -10.846 x1) ; \phi_10
		(>= -10.746 x1) ; \phi_10
		(<= -3.641 x4) ; \phi_10
		(>= -3.541 x4) ; \phi_10
		(<= -1.473 x7) ; \phi_10
		(>= -1.373 x7) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
	)
)

(:action validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.95 running_time) ; t_11 - 0.05
		(> 11.05 running_time) ; t_11 + 0.05
		(<= -11.009 x1) ; \phi_11
		(>= -10.909 x1) ; \phi_11
		(<= -3.701 x4) ; \phi_11
		(>= -3.601 x4) ; \phi_11
		(<= -1.496 x7) ; \phi_11
		(>= -1.396 x7) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
	)
)

(:action validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.95 running_time) ; t_12 - 0.05
		(> 12.05 running_time) ; t_12 + 0.05
		(<= -11.127 x1) ; \phi_12
		(>= -11.027 x1) ; \phi_12
		(<= -3.745 x4) ; \phi_12
		(>= -3.645 x4) ; \phi_12
		(<= -1.515 x7) ; \phi_12
		(>= -1.415 x7) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
	)
)

(:action validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.95 running_time) ; t_13 - 0.05
		(> 13.05 running_time) ; t_13 + 0.05
		(<= -11.212 x1) ; \phi_13
		(>= -11.112 x1) ; \phi_13
		(<= -3.777 x4) ; \phi_13
		(>= -3.677 x4) ; \phi_13
		(<= -1.53 x7) ; \phi_13
		(>= -1.43 x7) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
	)
)

(:action validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.95 running_time) ; t_14 - 0.05
		(> 14.05 running_time) ; t_14 + 0.05
		(<= -11.274 x1) ; \phi_14
		(>= -11.174 x1) ; \phi_14
		(<= -3.801 x4) ; \phi_14
		(>= -3.701 x4) ; \phi_14
		(<= -1.54 x7) ; \phi_14
		(>= -1.44 x7) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
	)
)

(:action validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.95 running_time) ; t_15 - 0.05
		(> 15.05 running_time) ; t_15 + 0.05
		(<= -11.319 x1) ; \phi_15
		(>= -11.219 x1) ; \phi_15
		(<= -3.818 x4) ; \phi_15
		(>= -3.718 x4) ; \phi_15
		(<= -1.546 x7) ; \phi_15
		(>= -1.446 x7) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
	)
)

(:action validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.95 running_time) ; t_16 - 0.05
		(> 16.05 running_time) ; t_16 + 0.05
		(<= -11.09 x1) ; \phi_16
		(>= -10.99 x1) ; \phi_16
		(<= -4.674 x4) ; \phi_16
		(>= -4.574 x4) ; \phi_16
		(<= -0.966 x7) ; \phi_16
		(>= -0.866 x7) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
	)
)

(:action validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.95 running_time) ; t_17 - 0.05
		(> 17.05 running_time) ; t_17 + 0.05
		(<= -10.442 x1) ; \phi_17
		(>= -10.342 x1) ; \phi_17
		(<= -6.763 x4) ; \phi_17
		(>= -6.663 x4) ; \phi_17
		(<= 0.418 x7) ; \phi_17
		(>= 0.518 x7) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
	)
)

(:action validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.95 running_time) ; t_18 - 0.05
		(> 18.05 running_time) ; t_18 + 0.05
		(<= -9.889 x1) ; \phi_18
		(>= -9.789 x1) ; \phi_18
		(<= -8.352 x4) ; \phi_18
		(>= -8.252 x4) ; \phi_18
		(<= 1.289 x7) ; \phi_18
		(>= 1.389 x7) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
	)
)

(:action validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.95 running_time) ; t_19 - 0.05
		(> 19.05 running_time) ; t_19 + 0.05
		(<= -9.534 x1) ; \phi_19
		(>= -9.434 x1) ; \phi_19
		(<= -9.262 x4) ; \phi_19
		(>= -9.162 x4) ; \phi_19
		(<= 1.576 x7) ; \phi_19
		(>= 1.676 x7) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
	)
)

(:action validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.95 running_time) ; t_20 - 0.05
		(> 20.05 running_time) ; t_20 + 0.05
		(<= -9.316 x1) ; \phi_20
		(>= -9.216 x1) ; \phi_20
		(<= -9.802 x4) ; \phi_20
		(>= -9.702 x4) ; \phi_20
		(<= 1.624 x7) ; \phi_20
		(>= 1.724 x7) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
	)
)

(:action validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.95 running_time) ; t_21 - 0.05
		(> 21.05 running_time) ; t_21 + 0.05
		(<= -9.723 x1) ; \phi_21
		(>= -9.623 x1) ; \phi_21
		(<= -9.049 x4) ; \phi_21
		(>= -8.949 x4) ; \phi_21
		(<= 1.063 x7) ; \phi_21
		(>= 1.163 x7) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
	)
)

(:action validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.95 running_time) ; t_22 - 0.05
		(> 22.05 running_time) ; t_22 + 0.05
		(<= -11.028 x1) ; \phi_22
		(>= -10.928 x1) ; \phi_22
		(<= -6.238 x4) ; \phi_22
		(>= -6.138 x4) ; \phi_22
		(<= -0.537 x7) ; \phi_22
		(>= -0.437 x7) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
	)
)

(:action validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.95 running_time) ; t_23 - 0.05
		(> 23.05 running_time) ; t_23 + 0.05
		(<= -11.887 x1) ; \phi_23
		(>= -11.787 x1) ; \phi_23
		(<= -4.098 x4) ; \phi_23
		(>= -3.998 x4) ; \phi_23
		(<= -1.753 x7) ; \phi_23
		(>= -1.653 x7) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
	)
)

(:action validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.95 running_time) ; t_24 - 0.05
		(> 24.05 running_time) ; t_24 + 0.05
		(<= -12.028 x1) ; \phi_24
		(>= -11.928 x1) ; \phi_24
		(<= -3.429 x4) ; \phi_24
		(>= -3.329 x4) ; \phi_24
		(<= -2.095 x7) ; \phi_24
		(>= -1.995 x7) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
	)
)

(:action validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.95 running_time) ; t_25 - 0.05
		(> 25.05 running_time) ; t_25 + 0.05
		(<= -11.836 x1) ; \phi_25
		(>= -11.736 x1) ; \phi_25
		(<= -3.583 x4) ; \phi_25
		(>= -3.483 x4) ; \phi_25
		(<= -1.914 x7) ; \phi_25
		(>= -1.814 x7) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
	)
)

(:action validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.95 running_time) ; t_26 - 0.05
		(> 26.05 running_time) ; t_26 + 0.05
		(<= -11.641 x1) ; \phi_26
		(>= -11.541 x1) ; \phi_26
		(<= -3.857 x4) ; \phi_26
		(>= -3.757 x4) ; \phi_26
		(<= -1.656 x7) ; \phi_26
		(>= -1.556 x7) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
	)
)

(:action validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.95 running_time) ; t_27 - 0.05
		(> 27.05 running_time) ; t_27 + 0.05
		(<= -11.544 x1) ; \phi_27
		(>= -11.444 x1) ; \phi_27
		(<= -3.975 x4) ; \phi_27
		(>= -3.875 x4) ; \phi_27
		(<= -1.523 x7) ; \phi_27
		(>= -1.423 x7) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
	)
)

(:action validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.95 running_time) ; t_28 - 0.05
		(> 28.05 running_time) ; t_28 + 0.05
		(<= -11.515 x1) ; \phi_28
		(>= -11.415 x1) ; \phi_28
		(<= -3.961 x4) ; \phi_28
		(>= -3.861 x4) ; \phi_28
		(<= -1.509 x7) ; \phi_28
		(>= -1.409 x7) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
	)
)

(:action validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.95 running_time) ; t_29 - 0.05
		(> 29.05 running_time) ; t_29 + 0.05
		(<= -11.505 x1) ; \phi_29
		(>= -11.405 x1) ; \phi_29
		(<= -3.909 x4) ; \phi_29
		(>= -3.809 x4) ; \phi_29
		(<= -1.543 x7) ; \phi_29
		(>= -1.443 x7) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
	)
)

(:action validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.95 running_time) ; t_30 - 0.05
		(> 30.05 running_time) ; t_30 + 0.05
		(<= -11.493 x1) ; \phi_30
		(>= -11.393 x1) ; \phi_30
		(<= -3.875 x4) ; \phi_30
		(>= -3.775 x4) ; \phi_30
		(<= -1.571 x7) ; \phi_30
		(>= -1.471 x7) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
	)
)

)