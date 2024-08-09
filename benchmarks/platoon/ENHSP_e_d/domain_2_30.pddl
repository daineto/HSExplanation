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

(:event validate_1
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

(:event validate_2
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

(:event validate_3
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

(:event validate_4
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

(:event validate_5
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

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.95 running_time) ; t_6 - 0.05
		(> 6.05 running_time) ; t_6 + 0.05
		(<= -9.07 x1) ; \phi_6
		(>= -8.97 x1) ; \phi_6
		(<= -3.938 x4) ; \phi_6
		(>= -3.838 x4) ; \phi_6
		(<= -0.607 x7) ; \phi_6
		(>= -0.507 x7) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.95 running_time) ; t_7 - 0.05
		(> 7.05 running_time) ; t_7 + 0.05
		(<= -9.131 x1) ; \phi_7
		(>= -9.031 x1) ; \phi_7
		(<= -6.364 x4) ; \phi_7
		(>= -6.264 x4) ; \phi_7
		(<= 0.967 x7) ; \phi_7
		(>= 1.067 x7) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.95 running_time) ; t_8 - 0.05
		(> 8.05 running_time) ; t_8 + 0.05
		(<= -9.072 x1) ; \phi_8
		(>= -8.972 x1) ; \phi_8
		(<= -8.304 x4) ; \phi_8
		(>= -8.204 x4) ; \phi_8
		(<= 2.057 x7) ; \phi_8
		(>= 2.157 x7) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
	)
)

(:event validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.95 running_time) ; t_9 - 0.05
		(> 9.05 running_time) ; t_9 + 0.05
		(<= -9.026 x1) ; \phi_9
		(>= -8.926 x1) ; \phi_9
		(<= -9.444 x4) ; \phi_9
		(>= -9.344 x4) ; \phi_9
		(<= 2.383 x7) ; \phi_9
		(>= 2.483 x7) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
	)
)

(:event validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.95 running_time) ; t_10 - 0.05
		(> 10.05 running_time) ; t_10 + 0.05
		(<= -9.001 x1) ; \phi_10
		(>= -8.901 x1) ; \phi_10
		(<= -10.07 x4) ; \phi_10
		(>= -9.97 x4) ; \phi_10
		(<= 2.297 x7) ; \phi_10
		(>= 2.397 x7) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
	)
)

(:event validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.95 running_time) ; t_11 - 0.05
		(> 11.05 running_time) ; t_11 + 0.05
		(<= -8.986 x1) ; \phi_11
		(>= -8.886 x1) ; \phi_11
		(<= -10.42 x4) ; \phi_11
		(>= -10.32 x4) ; \phi_11
		(<= 2.101 x7) ; \phi_11
		(>= 2.201 x7) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
	)
)

(:event validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.95 running_time) ; t_12 - 0.05
		(> 12.05 running_time) ; t_12 + 0.05
		(<= -8.976 x1) ; \phi_12
		(>= -8.876 x1) ; \phi_12
		(<= -10.622 x4) ; \phi_12
		(>= -10.522 x4) ; \phi_12
		(<= 1.934 x7) ; \phi_12
		(>= 2.034 x7) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
	)
)

(:event validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.95 running_time) ; t_13 - 0.05
		(> 13.05 running_time) ; t_13 + 0.05
		(<= -8.97 x1) ; \phi_13
		(>= -8.87 x1) ; \phi_13
		(<= -10.739 x4) ; \phi_13
		(>= -10.639 x4) ; \phi_13
		(<= 1.827 x7) ; \phi_13
		(>= 1.927 x7) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
	)
)

(:event validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.95 running_time) ; t_14 - 0.05
		(> 14.05 running_time) ; t_14 + 0.05
		(<= -9.557 x1) ; \phi_14
		(>= -9.457 x1) ; \phi_14
		(<= -9.619 x4) ; \phi_14
		(>= -9.519 x4) ; \phi_14
		(<= 1.177 x7) ; \phi_14
		(>= 1.277 x7) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
	)
)

(:event validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.95 running_time) ; t_15 - 0.05
		(> 15.05 running_time) ; t_15 + 0.05
		(<= -11.047 x1) ; \phi_15
		(>= -10.947 x1) ; \phi_15
		(<= -6.433 x4) ; \phi_15
		(>= -6.333 x4) ; \phi_15
		(<= -0.523 x7) ; \phi_15
		(>= -0.423 x7) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
	)
)

(:event validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.95 running_time) ; t_16 - 0.05
		(> 16.05 running_time) ; t_16 + 0.05
		(<= -11.986 x1) ; \phi_16
		(>= -11.886 x1) ; \phi_16
		(<= -4.092 x4) ; \phi_16
		(>= -3.992 x4) ; \phi_16
		(<= -1.79 x7) ; \phi_16
		(>= -1.69 x7) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
	)
)

(:event validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.95 running_time) ; t_17 - 0.05
		(> 17.05 running_time) ; t_17 + 0.05
		(<= -12.121 x1) ; \phi_17
		(>= -12.021 x1) ; \phi_17
		(<= -3.386 x4) ; \phi_17
		(>= -3.286 x4) ; \phi_17
		(<= -2.131 x7) ; \phi_17
		(>= -2.031 x7) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
	)
)

(:event validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.95 running_time) ; t_18 - 0.05
		(> 18.05 running_time) ; t_18 + 0.05
		(<= -11.893 x1) ; \phi_18
		(>= -11.793 x1) ; \phi_18
		(<= -3.566 x4) ; \phi_18
		(>= -3.466 x4) ; \phi_18
		(<= -1.93 x7) ; \phi_18
		(>= -1.83 x7) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
	)
)

(:event validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.95 running_time) ; t_19 - 0.05
		(> 19.05 running_time) ; t_19 + 0.05
		(<= -11.671 x1) ; \phi_19
		(>= -11.571 x1) ; \phi_19
		(<= -3.865 x4) ; \phi_19
		(>= -3.765 x4) ; \phi_19
		(<= -1.657 x7) ; \phi_19
		(>= -1.557 x7) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
	)
)

(:event validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.95 running_time) ; t_20 - 0.05
		(> 20.05 running_time) ; t_20 + 0.05
		(<= -11.561 x1) ; \phi_20
		(>= -11.461 x1) ; \phi_20
		(<= -3.99 x4) ; \phi_20
		(>= -3.89 x4) ; \phi_20
		(<= -1.52 x7) ; \phi_20
		(>= -1.42 x7) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
	)
)

(:event validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.95 running_time) ; t_21 - 0.05
		(> 21.05 running_time) ; t_21 + 0.05
		(<= -11.527 x1) ; \phi_21
		(>= -11.427 x1) ; \phi_21
		(<= -3.971 x4) ; \phi_21
		(>= -3.871 x4) ; \phi_21
		(<= -1.508 x7) ; \phi_21
		(>= -1.408 x7) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
	)
)

(:event validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.95 running_time) ; t_22 - 0.05
		(> 22.05 running_time) ; t_22 + 0.05
		(<= -11.515 x1) ; \phi_22
		(>= -11.415 x1) ; \phi_22
		(<= -3.914 x4) ; \phi_22
		(>= -3.814 x4) ; \phi_22
		(<= -1.544 x7) ; \phi_22
		(>= -1.444 x7) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
	)
)

(:event validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.95 running_time) ; t_23 - 0.05
		(> 23.05 running_time) ; t_23 + 0.05
		(<= -11.501 x1) ; \phi_23
		(>= -11.401 x1) ; \phi_23
		(<= -3.877 x4) ; \phi_23
		(>= -3.777 x4) ; \phi_23
		(<= -1.573 x7) ; \phi_23
		(>= -1.473 x7) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
	)
)

(:event validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.95 running_time) ; t_24 - 0.05
		(> 24.05 running_time) ; t_24 + 0.05
		(<= -11.485 x1) ; \phi_24
		(>= -11.385 x1) ; \phi_24
		(<= -3.866 x4) ; \phi_24
		(>= -3.766 x4) ; \phi_24
		(<= -1.581 x7) ; \phi_24
		(>= -1.481 x7) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
	)
)

(:event validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.95 running_time) ; t_25 - 0.05
		(> 25.05 running_time) ; t_25 + 0.05
		(<= -11.47 x1) ; \phi_25
		(>= -11.37 x1) ; \phi_25
		(<= -3.868 x4) ; \phi_25
		(>= -3.768 x4) ; \phi_25
		(<= -1.576 x7) ; \phi_25
		(>= -1.476 x7) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
	)
)

(:event validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.95 running_time) ; t_26 - 0.05
		(> 26.05 running_time) ; t_26 + 0.05
		(<= -11.46 x1) ; \phi_26
		(>= -11.36 x1) ; \phi_26
		(<= -3.87 x4) ; \phi_26
		(>= -3.77 x4) ; \phi_26
		(<= -1.569 x7) ; \phi_26
		(>= -1.469 x7) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
	)
)

(:event validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.95 running_time) ; t_27 - 0.05
		(> 27.05 running_time) ; t_27 + 0.05
		(<= -11.454 x1) ; \phi_27
		(>= -11.354 x1) ; \phi_27
		(<= -3.87 x4) ; \phi_27
		(>= -3.77 x4) ; \phi_27
		(<= -1.565 x7) ; \phi_27
		(>= -1.465 x7) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
	)
)

(:event validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.95 running_time) ; t_28 - 0.05
		(> 28.05 running_time) ; t_28 + 0.05
		(<= -11.45 x1) ; \phi_28
		(>= -11.35 x1) ; \phi_28
		(<= -3.868 x4) ; \phi_28
		(>= -3.768 x4) ; \phi_28
		(<= -1.564 x7) ; \phi_28
		(>= -1.464 x7) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
	)
)

(:event validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.95 running_time) ; t_29 - 0.05
		(> 29.05 running_time) ; t_29 + 0.05
		(<= -11.447 x1) ; \phi_29
		(>= -11.347 x1) ; \phi_29
		(<= -3.866 x4) ; \phi_29
		(>= -3.766 x4) ; \phi_29
		(<= -1.564 x7) ; \phi_29
		(>= -1.464 x7) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
	)
)

(:event validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.95 running_time) ; t_30 - 0.05
		(> 30.05 running_time) ; t_30 + 0.05
		(<= -11.445 x1) ; \phi_30
		(>= -11.345 x1) ; \phi_30
		(<= -3.864 x4) ; \phi_30
		(>= -3.764 x4) ; \phi_30
		(<= -1.564 x7) ; \phi_30
		(>= -1.464 x7) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
	)
)

)