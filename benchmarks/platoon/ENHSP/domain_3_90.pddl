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
	(monitor_61)
	(monitor_62)
	(monitor_63)
	(monitor_64)
	(monitor_65)
	(monitor_66)
	(monitor_67)
	(monitor_68)
	(monitor_69)
	(monitor_70)
	(monitor_71)
	(monitor_72)
	(monitor_73)
	(monitor_74)
	(monitor_75)
	(monitor_76)
	(monitor_77)
	(monitor_78)
	(monitor_79)
	(monitor_80)
	(monitor_81)
	(monitor_82)
	(monitor_83)
	(monitor_84)
	(monitor_85)
	(monitor_86)
	(monitor_87)
	(monitor_88)
	(monitor_89)
	(monitor_90)
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

(:process flow-monitor_61
	:parameters ()
	:precondition (and
		(monitor_61)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_62
	:parameters ()
	:precondition (and
		(monitor_62)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_63
	:parameters ()
	:precondition (and
		(monitor_63)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_64
	:parameters ()
	:precondition (and
		(monitor_64)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_65
	:parameters ()
	:precondition (and
		(monitor_65)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_66
	:parameters ()
	:precondition (and
		(monitor_66)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_67
	:parameters ()
	:precondition (and
		(monitor_67)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_68
	:parameters ()
	:precondition (and
		(monitor_68)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_69
	:parameters ()
	:precondition (and
		(monitor_69)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_70
	:parameters ()
	:precondition (and
		(monitor_70)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_71
	:parameters ()
	:precondition (and
		(monitor_71)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_72
	:parameters ()
	:precondition (and
		(monitor_72)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_73
	:parameters ()
	:precondition (and
		(monitor_73)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_74
	:parameters ()
	:precondition (and
		(monitor_74)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_75
	:parameters ()
	:precondition (and
		(monitor_75)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_76
	:parameters ()
	:precondition (and
		(monitor_76)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_77
	:parameters ()
	:precondition (and
		(monitor_77)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_78
	:parameters ()
	:precondition (and
		(monitor_78)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_79
	:parameters ()
	:precondition (and
		(monitor_79)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_80
	:parameters ()
	:precondition (and
		(monitor_80)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_81
	:parameters ()
	:precondition (and
		(monitor_81)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_82
	:parameters ()
	:precondition (and
		(monitor_82)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_83
	:parameters ()
	:precondition (and
		(monitor_83)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_84
	:parameters ()
	:precondition (and
		(monitor_84)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_85
	:parameters ()
	:precondition (and
		(monitor_85)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_86
	:parameters ()
	:precondition (and
		(monitor_86)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_87
	:parameters ()
	:precondition (and
		(monitor_87)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_88
	:parameters ()
	:precondition (and
		(monitor_88)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_89
	:parameters ()
	:precondition (and
		(monitor_89)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_90
	:parameters ()
	:precondition (and
		(monitor_90)
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

(:action validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.95 running_time) ; t_31 - 0.05
		(> 31.05 running_time) ; t_31 + 0.05
		(<= -11.479 x1) ; \phi_31
		(>= -11.379 x1) ; \phi_31
		(<= -3.865 x4) ; \phi_31
		(>= -3.765 x4) ; \phi_31
		(<= -1.579 x7) ; \phi_31
		(>= -1.479 x7) ; \phi_31
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
		(<= 31.95 running_time) ; t_32 - 0.05
		(> 32.05 running_time) ; t_32 + 0.05
		(<= -11.466 x1) ; \phi_32
		(>= -11.366 x1) ; \phi_32
		(<= -3.867 x4) ; \phi_32
		(>= -3.767 x4) ; \phi_32
		(<= -1.576 x7) ; \phi_32
		(>= -1.476 x7) ; \phi_32
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
		(<= 32.95 running_time) ; t_33 - 0.05
		(> 33.05 running_time) ; t_33 + 0.05
		(<= -11.457 x1) ; \phi_33
		(>= -11.357 x1) ; \phi_33
		(<= -3.869 x4) ; \phi_33
		(>= -3.769 x4) ; \phi_33
		(<= -1.569 x7) ; \phi_33
		(>= -1.469 x7) ; \phi_33
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
		(<= 33.95 running_time) ; t_34 - 0.05
		(> 34.05 running_time) ; t_34 + 0.05
		(<= -11.452 x1) ; \phi_34
		(>= -11.352 x1) ; \phi_34
		(<= -3.869 x4) ; \phi_34
		(>= -3.769 x4) ; \phi_34
		(<= -1.565 x7) ; \phi_34
		(>= -1.465 x7) ; \phi_34
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
		(<= 34.95 running_time) ; t_35 - 0.05
		(> 35.05 running_time) ; t_35 + 0.05
		(<= -11.449 x1) ; \phi_35
		(>= -11.349 x1) ; \phi_35
		(<= -3.867 x4) ; \phi_35
		(>= -3.767 x4) ; \phi_35
		(<= -1.564 x7) ; \phi_35
		(>= -1.464 x7) ; \phi_35
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
		(<= 35.95 running_time) ; t_36 - 0.05
		(> 36.05 running_time) ; t_36 + 0.05
		(<= -11.446 x1) ; \phi_36
		(>= -11.346 x1) ; \phi_36
		(<= -3.865 x4) ; \phi_36
		(>= -3.765 x4) ; \phi_36
		(<= -1.564 x7) ; \phi_36
		(>= -1.464 x7) ; \phi_36
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
		(<= 36.95 running_time) ; t_37 - 0.05
		(> 37.05 running_time) ; t_37 + 0.05
		(<= -11.444 x1) ; \phi_37
		(>= -11.344 x1) ; \phi_37
		(<= -3.864 x4) ; \phi_37
		(>= -3.764 x4) ; \phi_37
		(<= -1.564 x7) ; \phi_37
		(>= -1.464 x7) ; \phi_37
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
		(<= 37.95 running_time) ; t_38 - 0.05
		(> 38.05 running_time) ; t_38 + 0.05
		(<= -11.443 x1) ; \phi_38
		(>= -11.343 x1) ; \phi_38
		(<= -3.863 x4) ; \phi_38
		(>= -3.763 x4) ; \phi_38
		(<= -1.564 x7) ; \phi_38
		(>= -1.464 x7) ; \phi_38
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
		(<= 38.95 running_time) ; t_39 - 0.05
		(> 39.05 running_time) ; t_39 + 0.05
		(<= -11.442 x1) ; \phi_39
		(>= -11.342 x1) ; \phi_39
		(<= -3.863 x4) ; \phi_39
		(>= -3.763 x4) ; \phi_39
		(<= -1.564 x7) ; \phi_39
		(>= -1.464 x7) ; \phi_39
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
		(<= 39.95 running_time) ; t_40 - 0.05
		(> 40.05 running_time) ; t_40 + 0.05
		(<= -11.187 x1) ; \phi_40
		(>= -11.087 x1) ; \phi_40
		(<= -4.669 x4) ; \phi_40
		(>= -4.569 x4) ; \phi_40
		(<= -1.008 x7) ; \phi_40
		(>= -0.908 x7) ; \phi_40
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
		(<= 40.95 running_time) ; t_41 - 0.05
		(> 41.05 running_time) ; t_41 + 0.05
		(<= -10.511 x1) ; \phi_41
		(>= -10.411 x1) ; \phi_41
		(<= -6.74 x4) ; \phi_41
		(>= -6.64 x4) ; \phi_41
		(<= 0.367 x7) ; \phi_41
		(>= 0.467 x7) ; \phi_41
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
		(<= 41.95 running_time) ; t_42 - 0.05
		(> 42.05 running_time) ; t_42 + 0.05
		(<= -9.933 x1) ; \phi_42
		(>= -9.833 x1) ; \phi_42
		(<= -8.329 x4) ; \phi_42
		(>= -8.229 x4) ; \phi_42
		(<= 1.243 x7) ; \phi_42
		(>= 1.343 x7) ; \phi_42
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
		(<= 42.95 running_time) ; t_43 - 0.05
		(> 43.05 running_time) ; t_43 + 0.05
		(<= -9.561 x1) ; \phi_43
		(>= -9.461 x1) ; \phi_43
		(<= -9.24 x4) ; \phi_43
		(>= -9.14 x4) ; \phi_43
		(<= 1.538 x7) ; \phi_43
		(>= 1.638 x7) ; \phi_43
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
		(<= 43.95 running_time) ; t_44 - 0.05
		(> 44.05 running_time) ; t_44 + 0.05
		(<= -9.333 x1) ; \phi_44
		(>= -9.233 x1) ; \phi_44
		(<= -9.782 x4) ; \phi_44
		(>= -9.682 x4) ; \phi_44
		(<= 1.594 x7) ; \phi_44
		(>= 1.694 x7) ; \phi_44
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
		(<= 44.95 running_time) ; t_45 - 0.05
		(> 45.05 running_time) ; t_45 + 0.05
		(<= -9.193 x1) ; \phi_45
		(>= -9.093 x1) ; \phi_45
		(<= -10.142 x4) ; \phi_45
		(>= -10.042 x4) ; \phi_45
		(<= 1.608 x7) ; \phi_45
		(>= 1.708 x7) ; \phi_45
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
		(<= 45.95 running_time) ; t_46 - 0.05
		(> 46.05 running_time) ; t_46 + 0.05
		(<= -9.106 x1) ; \phi_46
		(>= -9.006 x1) ; \phi_46
		(<= -10.391 x4) ; \phi_46
		(>= -10.291 x4) ; \phi_46
		(<= 1.631 x7) ; \phi_46
		(>= 1.731 x7) ; \phi_46
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
		(<= 46.95 running_time) ; t_47 - 0.05
		(> 47.05 running_time) ; t_47 + 0.05
		(<= -9.051 x1) ; \phi_47
		(>= -8.951 x1) ; \phi_47
		(<= -10.564 x4) ; \phi_47
		(>= -10.464 x4) ; \phi_47
		(<= 1.662 x7) ; \phi_47
		(>= 1.762 x7) ; \phi_47
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
		(<= 47.95 running_time) ; t_48 - 0.05
		(> 48.05 running_time) ; t_48 + 0.05
		(<= -9.017 x1) ; \phi_48
		(>= -8.917 x1) ; \phi_48
		(<= -10.681 x4) ; \phi_48
		(>= -10.581 x4) ; \phi_48
		(<= 1.69 x7) ; \phi_48
		(>= 1.79 x7) ; \phi_48
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
		(<= 48.95 running_time) ; t_49 - 0.05
		(> 49.05 running_time) ; t_49 + 0.05
		(<= -8.996 x1) ; \phi_49
		(>= -8.896 x1) ; \phi_49
		(<= -10.759 x4) ; \phi_49
		(>= -10.659 x4) ; \phi_49
		(<= 1.711 x7) ; \phi_49
		(>= 1.811 x7) ; \phi_49
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
		(<= 49.95 running_time) ; t_50 - 0.05
		(> 50.05 running_time) ; t_50 + 0.05
		(<= -8.983 x1) ; \phi_50
		(>= -8.883 x1) ; \phi_50
		(<= -10.811 x4) ; \phi_50
		(>= -10.711 x4) ; \phi_50
		(<= 1.724 x7) ; \phi_50
		(>= 1.824 x7) ; \phi_50
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
		(<= 50.95 running_time) ; t_51 - 0.05
		(> 51.05 running_time) ; t_51 + 0.05
		(<= -8.974 x1) ; \phi_51
		(>= -8.874 x1) ; \phi_51
		(<= -10.845 x4) ; \phi_51
		(>= -10.745 x4) ; \phi_51
		(<= 1.731 x7) ; \phi_51
		(>= 1.831 x7) ; \phi_51
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
		(<= 51.95 running_time) ; t_52 - 0.05
		(> 52.05 running_time) ; t_52 + 0.05
		(<= -8.969 x1) ; \phi_52
		(>= -8.869 x1) ; \phi_52
		(<= -10.867 x4) ; \phi_52
		(>= -10.767 x4) ; \phi_52
		(<= 1.735 x7) ; \phi_52
		(>= 1.835 x7) ; \phi_52
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
		(<= 52.95 running_time) ; t_53 - 0.05
		(> 53.05 running_time) ; t_53 + 0.05
		(<= -8.966 x1) ; \phi_53
		(>= -8.866 x1) ; \phi_53
		(<= -10.881 x4) ; \phi_53
		(>= -10.781 x4) ; \phi_53
		(<= 1.736 x7) ; \phi_53
		(>= 1.836 x7) ; \phi_53
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
		(<= 53.95 running_time) ; t_54 - 0.05
		(> 54.05 running_time) ; t_54 + 0.05
		(<= -8.964 x1) ; \phi_54
		(>= -8.864 x1) ; \phi_54
		(<= -10.89 x4) ; \phi_54
		(>= -10.79 x4) ; \phi_54
		(<= 1.737 x7) ; \phi_54
		(>= 1.837 x7) ; \phi_54
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
		(<= 54.95 running_time) ; t_55 - 0.05
		(> 55.05 running_time) ; t_55 + 0.05
		(<= -8.963 x1) ; \phi_55
		(>= -8.863 x1) ; \phi_55
		(<= -10.896 x4) ; \phi_55
		(>= -10.796 x4) ; \phi_55
		(<= 1.737 x7) ; \phi_55
		(>= 1.837 x7) ; \phi_55
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
		(<= 55.95 running_time) ; t_56 - 0.05
		(> 56.05 running_time) ; t_56 + 0.05
		(<= -9.537 x1) ; \phi_56
		(>= -9.437 x1) ; \phi_56
		(<= -9.756 x4) ; \phi_56
		(>= -9.656 x4) ; \phi_56
		(<= 1.173 x7) ; \phi_56
		(>= 1.273 x7) ; \phi_56
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
		(<= 56.95 running_time) ; t_57 - 0.05
		(> 57.05 running_time) ; t_57 + 0.05
		(<= -11.048 x1) ; \phi_57
		(>= -10.948 x1) ; \phi_57
		(<= -6.525 x4) ; \phi_57
		(>= -6.425 x4) ; \phi_57
		(<= -0.491 x7) ; \phi_57
		(>= -0.391 x7) ; \phi_57
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
		(<= 57.95 running_time) ; t_58 - 0.05
		(> 58.05 running_time) ; t_58 + 0.05
		(<= -12.011 x1) ; \phi_58
		(>= -11.911 x1) ; \phi_58
		(<= -4.126 x4) ; \phi_58
		(>= -4.026 x4) ; \phi_58
		(<= -1.767 x7) ; \phi_58
		(>= -1.667 x7) ; \phi_58
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
		(<= 58.95 running_time) ; t_59 - 0.05
		(> 59.05 running_time) ; t_59 + 0.05
		(<= -12.15 x1) ; \phi_59
		(>= -12.05 x1) ; \phi_59
		(<= -3.386 x4) ; \phi_59
		(>= -3.286 x4) ; \phi_59
		(<= -2.125 x7) ; \phi_59
		(>= -2.025 x7) ; \phi_59
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
		(<= 59.95 running_time) ; t_60 - 0.05
		(> 60.05 running_time) ; t_60 + 0.05
		(<= -11.916 x1) ; \phi_60
		(>= -11.816 x1) ; \phi_60
		(<= -3.559 x4) ; \phi_60
		(>= -3.459 x4) ; \phi_60
		(<= -1.934 x7) ; \phi_60
		(>= -1.834 x7) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
	)
)

(:action validate_61
	:parameters ()
	:precondition (and
		(monitor_60)
		(<= 60.95 running_time) ; t_61 - 0.05
		(> 61.05 running_time) ; t_61 + 0.05
		(<= -11.451 x1) ; \phi_61
		(>= -11.351 x1) ; \phi_61
		(<= -4.572 x4) ; \phi_61
		(>= -4.472 x4) ; \phi_61
		(<= -1.184 x7) ; \phi_61
		(>= -1.084 x7) ; \phi_61
	)
	:effect (and
		(not (monitor_60))
		(monitor_61)
	)
)

(:action validate_62
	:parameters ()
	:precondition (and
		(monitor_61)
		(<= 61.95 running_time) ; t_62 - 0.05
		(> 62.05 running_time) ; t_62 + 0.05
		(<= -10.667 x1) ; \phi_62
		(>= -10.567 x1) ; \phi_62
		(<= -6.649 x4) ; \phi_62
		(>= -6.549 x4) ; \phi_62
		(<= 0.217 x7) ; \phi_62
		(>= 0.317 x7) ; \phi_62
	)
	:effect (and
		(not (monitor_61))
		(monitor_62)
	)
)

(:action validate_63
	:parameters ()
	:precondition (and
		(monitor_62)
		(<= 62.95 running_time) ; t_63 - 0.05
		(> 63.05 running_time) ; t_63 + 0.05
		(<= -10.03 x1) ; \phi_63
		(>= -9.93 x1) ; \phi_63
		(<= -8.223 x4) ; \phi_63
		(>= -8.123 x4) ; \phi_63
		(<= 1.098 x7) ; \phi_63
		(>= 1.198 x7) ; \phi_63
	)
	:effect (and
		(not (monitor_62))
		(monitor_63)
	)
)

(:action validate_64
	:parameters ()
	:precondition (and
		(monitor_63)
		(<= 63.95 running_time) ; t_64 - 0.05
		(> 64.05 running_time) ; t_64 + 0.05
		(<= -9.622 x1) ; \phi_64
		(>= -9.522 x1) ; \phi_64
		(<= -9.142 x4) ; \phi_64
		(>= -9.042 x4) ; \phi_64
		(<= 1.422 x7) ; \phi_64
		(>= 1.522 x7) ; \phi_64
	)
	:effect (and
		(not (monitor_63))
		(monitor_64)
	)
)

(:action validate_65
	:parameters ()
	:precondition (and
		(monitor_64)
		(<= 64.95 running_time) ; t_65 - 0.05
		(> 65.05 running_time) ; t_65 + 0.05
		(<= -9.371 x1) ; \phi_65
		(>= -9.271 x1) ; \phi_65
		(<= -9.704 x4) ; \phi_65
		(>= -9.604 x4) ; \phi_65
		(<= 1.516 x7) ; \phi_65
		(>= 1.616 x7) ; \phi_65
	)
	:effect (and
		(not (monitor_64))
		(monitor_65)
	)
)

(:action validate_66
	:parameters ()
	:precondition (and
		(monitor_65)
		(<= 65.95 running_time) ; t_66 - 0.05
		(> 66.05 running_time) ; t_66 + 0.05
		(<= -9.217 x1) ; \phi_66
		(>= -9.117 x1) ; \phi_66
		(<= -10.085 x4) ; \phi_66
		(>= -9.985 x4) ; \phi_66
		(<= 1.562 x7) ; \phi_66
		(>= 1.662 x7) ; \phi_66
	)
	:effect (and
		(not (monitor_65))
		(monitor_66)
	)
)

(:action validate_67
	:parameters ()
	:precondition (and
		(monitor_66)
		(<= 66.95 running_time) ; t_67 - 0.05
		(> 67.05 running_time) ; t_67 + 0.05
		(<= -9.63 x1) ; \phi_67
		(>= -9.53 x1) ; \phi_67
		(<= -9.319 x4) ; \phi_67
		(>= -9.219 x4) ; \phi_67
		(<= 1.089 x7) ; \phi_67
		(>= 1.189 x7) ; \phi_67
	)
	:effect (and
		(not (monitor_66))
		(monitor_67)
	)
)

(:action validate_68
	:parameters ()
	:precondition (and
		(monitor_67)
		(<= 67.95 running_time) ; t_68 - 0.05
		(> 68.05 running_time) ; t_68 + 0.05
		(<= -10.992 x1) ; \phi_68
		(>= -10.892 x1) ; \phi_68
		(<= -6.422 x4) ; \phi_68
		(>= -6.322 x4) ; \phi_68
		(<= -0.477 x7) ; \phi_68
		(>= -0.377 x7) ; \phi_68
	)
	:effect (and
		(not (monitor_67))
		(monitor_68)
	)
)

(:action validate_69
	:parameters ()
	:precondition (and
		(monitor_68)
		(<= 68.95 running_time) ; t_69 - 0.05
		(> 69.05 running_time) ; t_69 + 0.05
		(<= -11.909 x1) ; \phi_69
		(>= -11.809 x1) ; \phi_69
		(<= -4.161 x4) ; \phi_69
		(>= -4.061 x4) ; \phi_69
		(<= -1.72 x7) ; \phi_69
		(>= -1.62 x7) ; \phi_69
	)
	:effect (and
		(not (monitor_68))
		(monitor_69)
	)
)

(:action validate_70
	:parameters ()
	:precondition (and
		(monitor_69)
		(<= 69.95 running_time) ; t_70 - 0.05
		(> 70.05 running_time) ; t_70 + 0.05
		(<= -12.07 x1) ; \phi_70
		(>= -11.97 x1) ; \phi_70
		(<= -3.425 x4) ; \phi_70
		(>= -3.325 x4) ; \phi_70
		(<= -2.092 x7) ; \phi_70
		(>= -1.992 x7) ; \phi_70
	)
	:effect (and
		(not (monitor_69))
		(monitor_70)
	)
)

(:action validate_71
	:parameters ()
	:precondition (and
		(monitor_70)
		(<= 70.95 running_time) ; t_71 - 0.05
		(> 71.05 running_time) ; t_71 + 0.05
		(<= -11.87 x1) ; \phi_71
		(>= -11.77 x1) ; \phi_71
		(<= -3.566 x4) ; \phi_71
		(>= -3.466 x4) ; \phi_71
		(<= -1.925 x7) ; \phi_71
		(>= -1.825 x7) ; \phi_71
	)
	:effect (and
		(not (monitor_70))
		(monitor_71)
	)
)

(:action validate_72
	:parameters ()
	:precondition (and
		(monitor_71)
		(<= 71.95 running_time) ; t_72 - 0.05
		(> 72.05 running_time) ; t_72 + 0.05
		(<= -11.66 x1) ; \phi_72
		(>= -11.56 x1) ; \phi_72
		(<= -3.85 x4) ; \phi_72
		(>= -3.75 x4) ; \phi_72
		(<= -1.665 x7) ; \phi_72
		(>= -1.565 x7) ; \phi_72
	)
	:effect (and
		(not (monitor_71))
		(monitor_72)
	)
)

(:action validate_73
	:parameters ()
	:precondition (and
		(monitor_72)
		(<= 72.95 running_time) ; t_73 - 0.05
		(> 73.05 running_time) ; t_73 + 0.05
		(<= -11.32 x1) ; \phi_73
		(>= -11.22 x1) ; \phi_73
		(<= -4.693 x4) ; \phi_73
		(>= -4.593 x4) ; \phi_73
		(<= -1.043 x7) ; \phi_73
		(>= -0.943 x7) ; \phi_73
	)
	:effect (and
		(not (monitor_72))
		(monitor_73)
	)
)

(:action validate_74
	:parameters ()
	:precondition (and
		(monitor_73)
		(<= 73.95 running_time) ; t_74 - 0.05
		(> 74.05 running_time) ; t_74 + 0.05
		(<= -10.603 x1) ; \phi_74
		(>= -10.503 x1) ; \phi_74
		(<= -6.716 x4) ; \phi_74
		(>= -6.616 x4) ; \phi_74
		(<= 0.307 x7) ; \phi_74
		(>= 0.407 x7) ; \phi_74
	)
	:effect (and
		(not (monitor_73))
		(monitor_74)
	)
)

(:action validate_75
	:parameters ()
	:precondition (and
		(monitor_74)
		(<= 74.95 running_time) ; t_75 - 0.05
		(> 75.05 running_time) ; t_75 + 0.05
		(<= -9.993 x1) ; \phi_75
		(>= -9.893 x1) ; \phi_75
		(<= -8.291 x4) ; \phi_75
		(>= -8.191 x4) ; \phi_75
		(<= 1.177 x7) ; \phi_75
		(>= 1.277 x7) ; \phi_75
	)
	:effect (and
		(not (monitor_74))
		(monitor_75)
	)
)

(:action validate_76
	:parameters ()
	:precondition (and
		(monitor_75)
		(<= 75.95 running_time) ; t_76 - 0.05
		(> 76.05 running_time) ; t_76 + 0.05
		(<= -9.598 x1) ; \phi_76
		(>= -9.498 x1) ; \phi_76
		(<= -9.203 x4) ; \phi_76
		(>= -9.103 x4) ; \phi_76
		(<= 1.481 x7) ; \phi_76
		(>= 1.581 x7) ; \phi_76
	)
	:effect (and
		(not (monitor_75))
		(monitor_76)
	)
)

(:action validate_77
	:parameters ()
	:precondition (and
		(monitor_76)
		(<= 76.95 running_time) ; t_77 - 0.05
		(> 77.05 running_time) ; t_77 + 0.05
		(<= -9.356 x1) ; \phi_77
		(>= -9.256 x1) ; \phi_77
		(<= -9.75 x4) ; \phi_77
		(>= -9.65 x4) ; \phi_77
		(<= 1.551 x7) ; \phi_77
		(>= 1.651 x7) ; \phi_77
	)
	:effect (and
		(not (monitor_76))
		(monitor_77)
	)
)

(:action validate_78
	:parameters ()
	:precondition (and
		(monitor_77)
		(<= 77.95 running_time) ; t_78 - 0.05
		(> 78.05 running_time) ; t_78 + 0.05
		(<= -9.677 x1) ; \phi_78
		(>= -9.577 x1) ; \phi_78
		(<= -9.157 x4) ; \phi_78
		(>= -9.057 x4) ; \phi_78
		(<= 1.094 x7) ; \phi_78
		(>= 1.194 x7) ; \phi_78
	)
	:effect (and
		(not (monitor_77))
		(monitor_78)
	)
)

(:action validate_79
	:parameters ()
	:precondition (and
		(monitor_78)
		(<= 78.95 running_time) ; t_79 - 0.05
		(> 79.05 running_time) ; t_79 + 0.05
		(<= -10.964 x1) ; \phi_79
		(>= -10.864 x1) ; \phi_79
		(<= -6.403 x4) ; \phi_79
		(>= -6.303 x4) ; \phi_79
		(<= -0.454 x7) ; \phi_79
		(>= -0.354 x7) ; \phi_79
	)
	:effect (and
		(not (monitor_78))
		(monitor_79)
	)
)

(:action validate_80
	:parameters ()
	:precondition (and
		(monitor_79)
		(<= 79.95 running_time) ; t_80 - 0.05
		(> 80.05 running_time) ; t_80 + 0.05
		(<= -11.864 x1) ; \phi_80
		(>= -11.764 x1) ; \phi_80
		(<= -4.187 x4) ; \phi_80
		(>= -4.087 x4) ; \phi_80
		(<= -1.701 x7) ; \phi_80
		(>= -1.601 x7) ; \phi_80
	)
	:effect (and
		(not (monitor_79))
		(monitor_80)
	)
)

(:action validate_81
	:parameters ()
	:precondition (and
		(monitor_80)
		(<= 80.95 running_time) ; t_81 - 0.05
		(> 81.05 running_time) ; t_81 + 0.05
		(<= -12.038 x1) ; \phi_81
		(>= -11.938 x1) ; \phi_81
		(<= -3.443 x4) ; \phi_81
		(>= -3.343 x4) ; \phi_81
		(<= -2.086 x7) ; \phi_81
		(>= -1.986 x7) ; \phi_81
	)
	:effect (and
		(not (monitor_80))
		(monitor_81)
	)
)

(:action validate_82
	:parameters ()
	:precondition (and
		(monitor_81)
		(<= 81.95 running_time) ; t_82 - 0.05
		(> 82.05 running_time) ; t_82 + 0.05
		(<= -11.853 x1) ; \phi_82
		(>= -11.753 x1) ; \phi_82
		(<= -3.568 x4) ; \phi_82
		(>= -3.468 x4) ; \phi_82
		(<= -1.927 x7) ; \phi_82
		(>= -1.827 x7) ; \phi_82
	)
	:effect (and
		(not (monitor_81))
		(monitor_82)
	)
)

(:action validate_83
	:parameters ()
	:precondition (and
		(monitor_82)
		(<= 82.95 running_time) ; t_83 - 0.05
		(> 83.05 running_time) ; t_83 + 0.05
		(<= -11.653 x1) ; \phi_83
		(>= -11.553 x1) ; \phi_83
		(<= -3.844 x4) ; \phi_83
		(>= -3.744 x4) ; \phi_83
		(<= -1.669 x7) ; \phi_83
		(>= -1.569 x7) ; \phi_83
	)
	:effect (and
		(not (monitor_82))
		(monitor_83)
	)
)

(:action validate_84
	:parameters ()
	:precondition (and
		(monitor_83)
		(<= 83.95 running_time) ; t_84 - 0.05
		(> 84.05 running_time) ; t_84 + 0.05
		(<= -11.549 x1) ; \phi_84
		(>= -11.449 x1) ; \phi_84
		(<= -3.972 x4) ; \phi_84
		(>= -3.872 x4) ; \phi_84
		(<= -1.528 x7) ; \phi_84
		(>= -1.428 x7) ; \phi_84
	)
	:effect (and
		(not (monitor_83))
		(monitor_84)
	)
)

(:action validate_85
	:parameters ()
	:precondition (and
		(monitor_84)
		(<= 84.95 running_time) ; t_85 - 0.05
		(> 85.05 running_time) ; t_85 + 0.05
		(<= -11.517 x1) ; \phi_85
		(>= -11.417 x1) ; \phi_85
		(<= -3.963 x4) ; \phi_85
		(>= -3.863 x4) ; \phi_85
		(<= -1.509 x7) ; \phi_85
		(>= -1.409 x7) ; \phi_85
	)
	:effect (and
		(not (monitor_84))
		(monitor_85)
	)
)

(:action validate_86
	:parameters ()
	:precondition (and
		(monitor_85)
		(<= 85.95 running_time) ; t_86 - 0.05
		(> 86.05 running_time) ; t_86 + 0.05
		(<= -11.506 x1) ; \phi_86
		(>= -11.406 x1) ; \phi_86
		(<= -3.912 x4) ; \phi_86
		(>= -3.812 x4) ; \phi_86
		(<= -1.541 x7) ; \phi_86
		(>= -1.441 x7) ; \phi_86
	)
	:effect (and
		(not (monitor_85))
		(monitor_86)
	)
)

(:action validate_87
	:parameters ()
	:precondition (and
		(monitor_86)
		(<= 86.95 running_time) ; t_87 - 0.05
		(> 87.05 running_time) ; t_87 + 0.05
		(<= -11.495 x1) ; \phi_87
		(>= -11.395 x1) ; \phi_87
		(<= -3.876 x4) ; \phi_87
		(>= -3.776 x4) ; \phi_87
		(<= -1.57 x7) ; \phi_87
		(>= -1.47 x7) ; \phi_87
	)
	:effect (and
		(not (monitor_86))
		(monitor_87)
	)
)

(:action validate_88
	:parameters ()
	:precondition (and
		(monitor_87)
		(<= 87.95 running_time) ; t_88 - 0.05
		(> 88.05 running_time) ; t_88 + 0.05
		(<= -11.48 x1) ; \phi_88
		(>= -11.38 x1) ; \phi_88
		(<= -3.865 x4) ; \phi_88
		(>= -3.765 x4) ; \phi_88
		(<= -1.579 x7) ; \phi_88
		(>= -1.479 x7) ; \phi_88
	)
	:effect (and
		(not (monitor_87))
		(monitor_88)
	)
)

(:action validate_89
	:parameters ()
	:precondition (and
		(monitor_88)
		(<= 88.95 running_time) ; t_89 - 0.05
		(> 89.05 running_time) ; t_89 + 0.05
		(<= -11.467 x1) ; \phi_89
		(>= -11.367 x1) ; \phi_89
		(<= -3.867 x4) ; \phi_89
		(>= -3.767 x4) ; \phi_89
		(<= -1.576 x7) ; \phi_89
		(>= -1.476 x7) ; \phi_89
	)
	:effect (and
		(not (monitor_88))
		(monitor_89)
	)
)

(:action validate_90
	:parameters ()
	:precondition (and
		(monitor_89)
		(<= 89.95 running_time) ; t_90 - 0.05
		(> 90.05 running_time) ; t_90 + 0.05
		(<= -11.458 x1) ; \phi_90
		(>= -11.358 x1) ; \phi_90
		(<= -3.869 x4) ; \phi_90
		(>= -3.769 x4) ; \phi_90
		(<= -1.569 x7) ; \phi_90
		(>= -1.469 x7) ; \phi_90
	)
	:effect (and
		(not (monitor_89))
		(monitor_90)
	)
)

)