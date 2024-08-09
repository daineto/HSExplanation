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
	(monitor_31)
	(monitor_32)
	(monitor_33)
	(monitor_34)
	(monitor_35)
	(monitor_36)
	(monitor_37)
	(monitor_38)
	(monitor_39)
	(monitor_40)
	(monitor_41)
	(monitor_42)
	(monitor_43)
	(monitor_44)
	(monitor_45)
	(monitor_46)
	(monitor_47)
	(monitor_48)
	(monitor_49)
	(monitor_50)
	(monitor_51)
	(monitor_52)
	(monitor_53)
	(monitor_54)
	(monitor_55)
	(monitor_56)
	(monitor_57)
	(monitor_58)
	(monitor_59)
	(monitor_60)
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

(:process flow-monitor_31
	:parameters ()
	:precondition (and
		(monitor_31)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_32
	:parameters ()
	:precondition (and
		(monitor_32)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_33
	:parameters ()
	:precondition (and
		(monitor_33)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_34
	:parameters ()
	:precondition (and
		(monitor_34)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_35
	:parameters ()
	:precondition (and
		(monitor_35)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_36
	:parameters ()
	:precondition (and
		(monitor_36)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_37
	:parameters ()
	:precondition (and
		(monitor_37)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_38
	:parameters ()
	:precondition (and
		(monitor_38)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_39
	:parameters ()
	:precondition (and
		(monitor_39)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_40
	:parameters ()
	:precondition (and
		(monitor_40)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_41
	:parameters ()
	:precondition (and
		(monitor_41)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_42
	:parameters ()
	:precondition (and
		(monitor_42)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_43
	:parameters ()
	:precondition (and
		(monitor_43)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_44
	:parameters ()
	:precondition (and
		(monitor_44)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_45
	:parameters ()
	:precondition (and
		(monitor_45)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_46
	:parameters ()
	:precondition (and
		(monitor_46)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_47
	:parameters ()
	:precondition (and
		(monitor_47)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_48
	:parameters ()
	:precondition (and
		(monitor_48)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_49
	:parameters ()
	:precondition (and
		(monitor_49)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_50
	:parameters ()
	:precondition (and
		(monitor_50)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_51
	:parameters ()
	:precondition (and
		(monitor_51)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_52
	:parameters ()
	:precondition (and
		(monitor_52)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_53
	:parameters ()
	:precondition (and
		(monitor_53)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_54
	:parameters ()
	:precondition (and
		(monitor_54)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_55
	:parameters ()
	:precondition (and
		(monitor_55)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_56
	:parameters ()
	:precondition (and
		(monitor_56)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_57
	:parameters ()
	:precondition (and
		(monitor_57)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_58
	:parameters ()
	:precondition (and
		(monitor_58)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_59
	:parameters ()
	:precondition (and
		(monitor_59)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_60
	:parameters ()
	:precondition (and
		(monitor_60)
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

(:action validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.95 (running_time)) ; t_9 - 0.05
		(> 9.05 (running_time)) ; t_9 + 0.05
		(<= -10.618 (x1)) ; \phi_9
		(>= -10.518 (x1)) ; \phi_9
		(<= -3.559 (x4)) ; \phi_9
		(>= -3.459 (x4)) ; \phi_9
		(<= -1.447 (x7)) ; \phi_9
		(>= -1.347 (x7)) ; \phi_9
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
		(<= 9.95 (running_time)) ; t_10 - 0.05
		(> 10.05 (running_time)) ; t_10 + 0.05
		(<= -10.846 (x1)) ; \phi_10
		(>= -10.746 (x1)) ; \phi_10
		(<= -3.641 (x4)) ; \phi_10
		(>= -3.541 (x4)) ; \phi_10
		(<= -1.473 (x7)) ; \phi_10
		(>= -1.373 (x7)) ; \phi_10
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
		(<= 10.95 (running_time)) ; t_11 - 0.05
		(> 11.05 (running_time)) ; t_11 + 0.05
		(<= -11.009 (x1)) ; \phi_11
		(>= -10.909 (x1)) ; \phi_11
		(<= -3.701 (x4)) ; \phi_11
		(>= -3.601 (x4)) ; \phi_11
		(<= -1.496 (x7)) ; \phi_11
		(>= -1.396 (x7)) ; \phi_11
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
		(<= 11.95 (running_time)) ; t_12 - 0.05
		(> 12.05 (running_time)) ; t_12 + 0.05
		(<= -11.127 (x1)) ; \phi_12
		(>= -11.027 (x1)) ; \phi_12
		(<= -3.745 (x4)) ; \phi_12
		(>= -3.645 (x4)) ; \phi_12
		(<= -1.515 (x7)) ; \phi_12
		(>= -1.415 (x7)) ; \phi_12
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
		(<= 12.95 (running_time)) ; t_13 - 0.05
		(> 13.05 (running_time)) ; t_13 + 0.05
		(<= -11.212 (x1)) ; \phi_13
		(>= -11.112 (x1)) ; \phi_13
		(<= -3.777 (x4)) ; \phi_13
		(>= -3.677 (x4)) ; \phi_13
		(<= -1.53 (x7)) ; \phi_13
		(>= -1.43 (x7)) ; \phi_13
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
		(<= 13.95 (running_time)) ; t_14 - 0.05
		(> 14.05 (running_time)) ; t_14 + 0.05
		(<= -11.274 (x1)) ; \phi_14
		(>= -11.174 (x1)) ; \phi_14
		(<= -3.801 (x4)) ; \phi_14
		(>= -3.701 (x4)) ; \phi_14
		(<= -1.54 (x7)) ; \phi_14
		(>= -1.44 (x7)) ; \phi_14
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
		(<= 14.95 (running_time)) ; t_15 - 0.05
		(> 15.05 (running_time)) ; t_15 + 0.05
		(<= -11.319 (x1)) ; \phi_15
		(>= -11.219 (x1)) ; \phi_15
		(<= -3.818 (x4)) ; \phi_15
		(>= -3.718 (x4)) ; \phi_15
		(<= -1.546 (x7)) ; \phi_15
		(>= -1.446 (x7)) ; \phi_15
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
		(<= 15.95 (running_time)) ; t_16 - 0.05
		(> 16.05 (running_time)) ; t_16 + 0.05
		(<= -11.352 (x1)) ; \phi_16
		(>= -11.252 (x1)) ; \phi_16
		(<= -3.83 (x4)) ; \phi_16
		(>= -3.73 (x4)) ; \phi_16
		(<= -1.551 (x7)) ; \phi_16
		(>= -1.451 (x7)) ; \phi_16
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
		(<= 16.95 (running_time)) ; t_17 - 0.05
		(> 17.05 (running_time)) ; t_17 + 0.05
		(<= -11.113 (x1)) ; \phi_17
		(>= -11.013 (x1)) ; \phi_17
		(<= -4.682 (x4)) ; \phi_17
		(>= -4.582 (x4)) ; \phi_17
		(<= -0.971 (x7)) ; \phi_17
		(>= -0.871 (x7)) ; \phi_17
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
		(<= 17.95 (running_time)) ; t_18 - 0.05
		(> 18.05 (running_time)) ; t_18 + 0.05
		(<= -10.457 (x1)) ; \phi_18
		(>= -10.357 (x1)) ; \phi_18
		(<= -6.767 (x4)) ; \phi_18
		(>= -6.667 (x4)) ; \phi_18
		(<= 0.411 (x7)) ; \phi_18
		(>= 0.511 (x7)) ; \phi_18
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
		(<= 18.95 (running_time)) ; t_19 - 0.05
		(> 19.05 (running_time)) ; t_19 + 0.05
		(<= -9.898 (x1)) ; \phi_19
		(>= -9.798 (x1)) ; \phi_19
		(<= -8.352 (x4)) ; \phi_19
		(>= -8.252 (x4)) ; \phi_19
		(<= 1.28 (x7)) ; \phi_19
		(>= 1.38 (x7)) ; \phi_19
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
		(<= 19.95 (running_time)) ; t_20 - 0.05
		(> 20.05 (running_time)) ; t_20 + 0.05
		(<= -9.54 (x1)) ; \phi_20
		(>= -9.44 (x1)) ; \phi_20
		(<= -9.259 (x4)) ; \phi_20
		(>= -9.159 (x4)) ; \phi_20
		(<= 1.567 (x7)) ; \phi_20
		(>= 1.667 (x7)) ; \phi_20
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
		(<= 20.95 (running_time)) ; t_21 - 0.05
		(> 21.05 (running_time)) ; t_21 + 0.05
		(<= -9.32 (x1)) ; \phi_21
		(>= -9.22 (x1)) ; \phi_21
		(<= -9.799 (x4)) ; \phi_21
		(>= -9.699 (x4)) ; \phi_21
		(<= 1.616 (x7)) ; \phi_21
		(>= 1.716 (x7)) ; \phi_21
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
		(<= 21.95 (running_time)) ; t_22 - 0.05
		(> 22.05 (running_time)) ; t_22 + 0.05
		(<= -9.185 (x1)) ; \phi_22
		(>= -9.085 (x1)) ; \phi_22
		(<= -10.156 (x4)) ; \phi_22
		(>= -10.056 (x4)) ; \phi_22
		(<= 1.623 (x7)) ; \phi_22
		(>= 1.723 (x7)) ; \phi_22
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
		(<= 22.95 (running_time)) ; t_23 - 0.05
		(> 23.05 (running_time)) ; t_23 + 0.05
		(<= -9.1 (x1)) ; \phi_23
		(>= -9.0 (x1)) ; \phi_23
		(<= -10.402 (x4)) ; \phi_23
		(>= -10.302 (x4)) ; \phi_23
		(<= 1.641 (x7)) ; \phi_23
		(>= 1.741 (x7)) ; \phi_23
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
		(<= 23.95 (running_time)) ; t_24 - 0.05
		(> 24.05 (running_time)) ; t_24 + 0.05
		(<= -9.048 (x1)) ; \phi_24
		(>= -8.948 (x1)) ; \phi_24
		(<= -10.572 (x4)) ; \phi_24
		(>= -10.472 (x4)) ; \phi_24
		(<= 1.667 (x7)) ; \phi_24
		(>= 1.767 (x7)) ; \phi_24
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
		(<= 24.95 (running_time)) ; t_25 - 0.05
		(> 25.05 (running_time)) ; t_25 + 0.05
		(<= -9.599 (x1)) ; \phi_25
		(>= -9.499 (x1)) ; \phi_25
		(<= -9.514 (x4)) ; \phi_25
		(>= -9.414 (x4)) ; \phi_25
		(<= 1.11 (x7)) ; \phi_25
		(>= 1.21 (x7)) ; \phi_25
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
		(<= 25.95 (running_time)) ; t_26 - 0.05
		(> 26.05 (running_time)) ; t_26 + 0.05
		(<= -11.057 (x1)) ; \phi_26
		(>= -10.957 (x1)) ; \phi_26
		(<= -6.401 (x4)) ; \phi_26
		(>= -6.301 (x4)) ; \phi_26
		(<= -0.525 (x7)) ; \phi_26
		(>= -0.425 (x7)) ; \phi_26
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
		(<= 26.95 (running_time)) ; t_27 - 0.05
		(> 27.05 (running_time)) ; t_27 + 0.05
		(<= -11.98 (x1)) ; \phi_27
		(>= -11.88 (x1)) ; \phi_27
		(<= -4.098 (x4)) ; \phi_27
		(>= -3.998 (x4)) ; \phi_27
		(<= -1.768 (x7)) ; \phi_27
		(>= -1.668 (x7)) ; \phi_27
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
		(<= 27.95 (running_time)) ; t_28 - 0.05
		(> 28.05 (running_time)) ; t_28 + 0.05
		(<= -12.113 (x1)) ; \phi_28
		(>= -12.013 (x1)) ; \phi_28
		(<= -3.397 (x4)) ; \phi_28
		(>= -3.297 (x4)) ; \phi_28
		(<= -2.112 (x7)) ; \phi_28
		(>= -2.012 (x7)) ; \phi_28
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
		(<= 28.95 (running_time)) ; t_29 - 0.05
		(> 29.05 (running_time)) ; t_29 + 0.05
		(<= -11.888 (x1)) ; \phi_29
		(>= -11.788 (x1)) ; \phi_29
		(<= -3.569 (x4)) ; \phi_29
		(>= -3.469 (x4)) ; \phi_29
		(<= -1.923 (x7)) ; \phi_29
		(>= -1.823 (x7)) ; \phi_29
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
		(<= 29.95 (running_time)) ; t_30 - 0.05
		(> 30.05 (running_time)) ; t_30 + 0.05
		(<= -11.669 (x1)) ; \phi_30
		(>= -11.569 (x1)) ; \phi_30
		(<= -3.863 (x4)) ; \phi_30
		(>= -3.763 (x4)) ; \phi_30
		(<= -1.658 (x7)) ; \phi_30
		(>= -1.558 (x7)) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
	)
)

(:action validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.95 (running_time)) ; t_31 - 0.05
		(> 31.05 (running_time)) ; t_31 + 0.05
		(<= -11.56 (x1)) ; \phi_31
		(>= -11.46 (x1)) ; \phi_31
		(<= -3.987 (x4)) ; \phi_31
		(>= -3.887 (x4)) ; \phi_31
		(<= -1.523 (x7)) ; \phi_31
		(>= -1.423 (x7)) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
	)
)

(:action validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.95 (running_time)) ; t_32 - 0.05
		(> 32.05 (running_time)) ; t_32 + 0.05
		(<= -11.526 (x1)) ; \phi_32
		(>= -11.426 (x1)) ; \phi_32
		(<= -3.97 (x4)) ; \phi_32
		(>= -3.87 (x4)) ; \phi_32
		(<= -1.51 (x7)) ; \phi_32
		(>= -1.41 (x7)) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
	)
)

(:action validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.95 (running_time)) ; t_33 - 0.05
		(> 33.05 (running_time)) ; t_33 + 0.05
		(<= -11.514 (x1)) ; \phi_33
		(>= -11.414 (x1)) ; \phi_33
		(<= -3.914 (x4)) ; \phi_33
		(>= -3.814 (x4)) ; \phi_33
		(<= -1.544 (x7)) ; \phi_33
		(>= -1.444 (x7)) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
	)
)

(:action validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.95 (running_time)) ; t_34 - 0.05
		(> 34.05 (running_time)) ; t_34 + 0.05
		(<= -11.501 (x1)) ; \phi_34
		(>= -11.401 (x1)) ; \phi_34
		(<= -3.877 (x4)) ; \phi_34
		(>= -3.777 (x4)) ; \phi_34
		(<= -1.573 (x7)) ; \phi_34
		(>= -1.473 (x7)) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
	)
)

(:action validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.95 (running_time)) ; t_35 - 0.05
		(> 35.05 (running_time)) ; t_35 + 0.05
		(<= -11.484 (x1)) ; \phi_35
		(>= -11.384 (x1)) ; \phi_35
		(<= -3.866 (x4)) ; \phi_35
		(>= -3.766 (x4)) ; \phi_35
		(<= -1.581 (x7)) ; \phi_35
		(>= -1.481 (x7)) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
	)
)

(:action validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.95 (running_time)) ; t_36 - 0.05
		(> 36.05 (running_time)) ; t_36 + 0.05
		(<= -11.47 (x1)) ; \phi_36
		(>= -11.37 (x1)) ; \phi_36
		(<= -3.868 (x4)) ; \phi_36
		(>= -3.768 (x4)) ; \phi_36
		(<= -1.576 (x7)) ; \phi_36
		(>= -1.476 (x7)) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
	)
)

(:action validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.95 (running_time)) ; t_37 - 0.05
		(> 37.05 (running_time)) ; t_37 + 0.05
		(<= -11.46 (x1)) ; \phi_37
		(>= -11.36 (x1)) ; \phi_37
		(<= -3.87 (x4)) ; \phi_37
		(>= -3.77 (x4)) ; \phi_37
		(<= -1.569 (x7)) ; \phi_37
		(>= -1.469 (x7)) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
	)
)

(:action validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.95 (running_time)) ; t_38 - 0.05
		(> 38.05 (running_time)) ; t_38 + 0.05
		(<= -11.454 (x1)) ; \phi_38
		(>= -11.354 (x1)) ; \phi_38
		(<= -3.87 (x4)) ; \phi_38
		(>= -3.77 (x4)) ; \phi_38
		(<= -1.565 (x7)) ; \phi_38
		(>= -1.465 (x7)) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
	)
)

(:action validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.95 (running_time)) ; t_39 - 0.05
		(> 39.05 (running_time)) ; t_39 + 0.05
		(<= -11.45 (x1)) ; \phi_39
		(>= -11.35 (x1)) ; \phi_39
		(<= -3.868 (x4)) ; \phi_39
		(>= -3.768 (x4)) ; \phi_39
		(<= -1.564 (x7)) ; \phi_39
		(>= -1.464 (x7)) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
	)
)

(:action validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.95 (running_time)) ; t_40 - 0.05
		(> 40.05 (running_time)) ; t_40 + 0.05
		(<= -11.193 (x1)) ; \phi_40
		(>= -11.093 (x1)) ; \phi_40
		(<= -4.672 (x4)) ; \phi_40
		(>= -4.572 (x4)) ; \phi_40
		(<= -1.008 (x7)) ; \phi_40
		(>= -0.908 (x7)) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
	)
)

(:action validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.95 (running_time)) ; t_41 - 0.05
		(> 41.05 (running_time)) ; t_41 + 0.05
		(<= -10.515 (x1)) ; \phi_41
		(>= -10.415 (x1)) ; \phi_41
		(<= -6.741 (x4)) ; \phi_41
		(>= -6.641 (x4)) ; \phi_41
		(<= 0.366 (x7)) ; \phi_41
		(>= 0.466 (x7)) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
	)
)

(:action validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.95 (running_time)) ; t_42 - 0.05
		(> 42.05 (running_time)) ; t_42 + 0.05
		(<= -9.936 (x1)) ; \phi_42
		(>= -9.836 (x1)) ; \phi_42
		(<= -8.33 (x4)) ; \phi_42
		(>= -8.23 (x4)) ; \phi_42
		(<= 1.241 (x7)) ; \phi_42
		(>= 1.341 (x7)) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
	)
)

(:action validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.95 (running_time)) ; t_43 - 0.05
		(> 43.05 (running_time)) ; t_43 + 0.05
		(<= -9.563 (x1)) ; \phi_43
		(>= -9.463 (x1)) ; \phi_43
		(<= -9.239 (x4)) ; \phi_43
		(>= -9.139 (x4)) ; \phi_43
		(<= 1.536 (x7)) ; \phi_43
		(>= 1.636 (x7)) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
	)
)

(:action validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.95 (running_time)) ; t_44 - 0.05
		(> 44.05 (running_time)) ; t_44 + 0.05
		(<= -9.334 (x1)) ; \phi_44
		(>= -9.234 (x1)) ; \phi_44
		(<= -9.781 (x4)) ; \phi_44
		(>= -9.681 (x4)) ; \phi_44
		(<= 1.592 (x7)) ; \phi_44
		(>= 1.692 (x7)) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
	)
)

(:action validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.95 (running_time)) ; t_45 - 0.05
		(> 45.05 (running_time)) ; t_45 + 0.05
		(<= -9.194 (x1)) ; \phi_45
		(>= -9.094 (x1)) ; \phi_45
		(<= -10.141 (x4)) ; \phi_45
		(>= -10.041 (x4)) ; \phi_45
		(<= 1.607 (x7)) ; \phi_45
		(>= 1.707 (x7)) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
	)
)

(:action validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.95 (running_time)) ; t_46 - 0.05
		(> 46.05 (running_time)) ; t_46 + 0.05
		(<= -9.106 (x1)) ; \phi_46
		(>= -9.006 (x1)) ; \phi_46
		(<= -10.391 (x4)) ; \phi_46
		(>= -10.291 (x4)) ; \phi_46
		(<= 1.631 (x7)) ; \phi_46
		(>= 1.731 (x7)) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
	)
)

(:action validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.95 (running_time)) ; t_47 - 0.05
		(> 47.05 (running_time)) ; t_47 + 0.05
		(<= -9.051 (x1)) ; \phi_47
		(>= -8.951 (x1)) ; \phi_47
		(<= -10.563 (x4)) ; \phi_47
		(>= -10.463 (x4)) ; \phi_47
		(<= 1.662 (x7)) ; \phi_47
		(>= 1.762 (x7)) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
	)
)

(:action validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.95 (running_time)) ; t_48 - 0.05
		(> 48.05 (running_time)) ; t_48 + 0.05
		(<= -9.576 (x1)) ; \phi_48
		(>= -9.476 (x1)) ; \phi_48
		(<= -9.561 (x4)) ; \phi_48
		(>= -9.461 (x4)) ; \phi_48
		(<= 1.134 (x7)) ; \phi_48
		(>= 1.234 (x7)) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
	)
)

(:action validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.95 (running_time)) ; t_49 - 0.05
		(> 49.05 (running_time)) ; t_49 + 0.05
		(<= -11.03 (x1)) ; \phi_49
		(>= -10.93 (x1)) ; \phi_49
		(<= -6.461 (x4)) ; \phi_49
		(>= -6.361 (x4)) ; \phi_49
		(<= -0.492 (x7)) ; \phi_49
		(>= -0.392 (x7)) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
	)
)

(:action validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.95 (running_time)) ; t_50 - 0.05
		(> 50.05 (running_time)) ; t_50 + 0.05
		(<= -11.971 (x1)) ; \phi_50
		(>= -11.871 (x1)) ; \phi_50
		(<= -4.128 (x4)) ; \phi_50
		(>= -4.028 (x4)) ; \phi_50
		(<= -1.751 (x7)) ; \phi_50
		(>= -1.651 (x7)) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
	)
)

(:action validate_51
	:parameters ()
	:precondition (and
		(monitor_50)
		(<= 50.95 (running_time)) ; t_51 - 0.05
		(> 51.05 (running_time)) ; t_51 + 0.05
		(<= -12.115 (x1)) ; \phi_51
		(>= -12.015 (x1)) ; \phi_51
		(<= -3.399 (x4)) ; \phi_51
		(>= -3.299 (x4)) ; \phi_51
		(<= -2.111 (x7)) ; \phi_51
		(>= -2.011 (x7)) ; \phi_51
	)
	:effect (and
		(not (monitor_50))
		(monitor_51)
	)
)

(:action validate_52
	:parameters ()
	:precondition (and
		(monitor_51)
		(<= 51.95 (running_time)) ; t_52 - 0.05
		(> 52.05 (running_time)) ; t_52 + 0.05
		(<= -11.893 (x1)) ; \phi_52
		(>= -11.793 (x1)) ; \phi_52
		(<= -3.563 (x4)) ; \phi_52
		(>= -3.463 (x4)) ; \phi_52
		(<= -1.929 (x7)) ; \phi_52
		(>= -1.829 (x7)) ; \phi_52
	)
	:effect (and
		(not (monitor_51))
		(monitor_52)
	)
)

(:action validate_53
	:parameters ()
	:precondition (and
		(monitor_52)
		(<= 52.95 (running_time)) ; t_53 - 0.05
		(> 53.05 (running_time)) ; t_53 + 0.05
		(<= -11.672 (x1)) ; \phi_53
		(>= -11.572 (x1)) ; \phi_53
		(<= -3.858 (x4)) ; \phi_53
		(>= -3.758 (x4)) ; \phi_53
		(<= -1.663 (x7)) ; \phi_53
		(>= -1.563 (x7)) ; \phi_53
	)
	:effect (and
		(not (monitor_52))
		(monitor_53)
	)
)

(:action validate_54
	:parameters ()
	:precondition (and
		(monitor_53)
		(<= 53.95 (running_time)) ; t_54 - 0.05
		(> 54.05 (running_time)) ; t_54 + 0.05
		(<= -11.561 (x1)) ; \phi_54
		(>= -11.461 (x1)) ; \phi_54
		(<= -3.986 (x4)) ; \phi_54
		(>= -3.886 (x4)) ; \phi_54
		(<= -1.524 (x7)) ; \phi_54
		(>= -1.424 (x7)) ; \phi_54
	)
	:effect (and
		(not (monitor_53))
		(monitor_54)
	)
)

(:action validate_55
	:parameters ()
	:precondition (and
		(monitor_54)
		(<= 54.95 (running_time)) ; t_55 - 0.05
		(> 55.05 (running_time)) ; t_55 + 0.05
		(<= -11.526 (x1)) ; \phi_55
		(>= -11.426 (x1)) ; \phi_55
		(<= -3.971 (x4)) ; \phi_55
		(>= -3.871 (x4)) ; \phi_55
		(<= -1.51 (x7)) ; \phi_55
		(>= -1.41 (x7)) ; \phi_55
	)
	:effect (and
		(not (monitor_54))
		(monitor_55)
	)
)

(:action validate_56
	:parameters ()
	:precondition (and
		(monitor_55)
		(<= 55.95 (running_time)) ; t_56 - 0.05
		(> 56.05 (running_time)) ; t_56 + 0.05
		(<= -11.514 (x1)) ; \phi_56
		(>= -11.414 (x1)) ; \phi_56
		(<= -3.915 (x4)) ; \phi_56
		(>= -3.815 (x4)) ; \phi_56
		(<= -1.544 (x7)) ; \phi_56
		(>= -1.444 (x7)) ; \phi_56
	)
	:effect (and
		(not (monitor_55))
		(monitor_56)
	)
)

(:action validate_57
	:parameters ()
	:precondition (and
		(monitor_56)
		(<= 56.95 (running_time)) ; t_57 - 0.05
		(> 57.05 (running_time)) ; t_57 + 0.05
		(<= -11.256 (x1)) ; \phi_57
		(>= -11.156 (x1)) ; \phi_57
		(<= -4.652 (x4)) ; \phi_57
		(>= -4.552 (x4)) ; \phi_57
		(<= -1.04 (x7)) ; \phi_57
		(>= -0.94 (x7)) ; \phi_57
	)
	:effect (and
		(not (monitor_56))
		(monitor_57)
	)
)

(:action validate_58
	:parameters ()
	:precondition (and
		(monitor_57)
		(<= 57.95 (running_time)) ; t_58 - 0.05
		(> 58.05 (running_time)) ; t_58 + 0.05
		(<= -10.563 (x1)) ; \phi_58
		(>= -10.463 (x1)) ; \phi_58
		(<= -6.708 (x4)) ; \phi_58
		(>= -6.608 (x4)) ; \phi_58
		(<= 0.324 (x7)) ; \phi_58
		(>= 0.424 (x7)) ; \phi_58
	)
	:effect (and
		(not (monitor_57))
		(monitor_58)
	)
)

(:action validate_59
	:parameters ()
	:precondition (and
		(monitor_58)
		(<= 58.95 (running_time)) ; t_59 - 0.05
		(> 59.05 (running_time)) ; t_59 + 0.05
		(<= -9.967 (x1)) ; \phi_59
		(>= -9.867 (x1)) ; \phi_59
		(<= -8.306 (x4)) ; \phi_59
		(>= -8.206 (x4)) ; \phi_59
		(<= 1.209 (x7)) ; \phi_59
		(>= 1.309 (x7)) ; \phi_59
	)
	:effect (and
		(not (monitor_58))
		(monitor_59)
	)
)

(:action validate_60
	:parameters ()
	:precondition (and
		(monitor_59)
		(<= 59.95 (running_time)) ; t_60 - 0.05
		(> 60.05 (running_time)) ; t_60 + 0.05
		(<= -9.582 (x1)) ; \phi_60
		(>= -9.482 (x1)) ; \phi_60
		(<= -9.221 (x4)) ; \phi_60
		(>= -9.121 (x4)) ; \phi_60
		(<= 1.512 (x7)) ; \phi_60
		(>= 1.612 (x7)) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
	)
)

)