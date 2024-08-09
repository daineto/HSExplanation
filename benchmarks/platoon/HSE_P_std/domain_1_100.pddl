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
	(monitor_91)
	(monitor_92)
	(monitor_93)
	(monitor_94)
	(monitor_95)
	(monitor_96)
	(monitor_97)
	(monitor_98)
	(monitor_99)
	(monitor_100)
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

(:process flow-monitor_91
	:parameters ()
	:precondition (and
		(monitor_91)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_92
	:parameters ()
	:precondition (and
		(monitor_92)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_93
	:parameters ()
	:precondition (and
		(monitor_93)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_94
	:parameters ()
	:precondition (and
		(monitor_94)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_95
	:parameters ()
	:precondition (and
		(monitor_95)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_96
	:parameters ()
	:precondition (and
		(monitor_96)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_97
	:parameters ()
	:precondition (and
		(monitor_97)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_98
	:parameters ()
	:precondition (and
		(monitor_98)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_99
	:parameters ()
	:precondition (and
		(monitor_99)
	)
	:effect (and
		(increase (running_time) (* #t 1.0))
	)
)

(:process flow-monitor_100
	:parameters ()
	:precondition (and
		(monitor_100)
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
		(<= -11.376 (x1)) ; \phi_17
		(>= -11.276 (x1)) ; \phi_17
		(<= -3.839 (x4)) ; \phi_17
		(>= -3.739 (x4)) ; \phi_17
		(<= -1.554 (x7)) ; \phi_17
		(>= -1.454 (x7)) ; \phi_17
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
		(<= -11.393 (x1)) ; \phi_18
		(>= -11.293 (x1)) ; \phi_18
		(<= -3.845 (x4)) ; \phi_18
		(>= -3.745 (x4)) ; \phi_18
		(<= -1.557 (x7)) ; \phi_18
		(>= -1.457 (x7)) ; \phi_18
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
		(<= -11.406 (x1)) ; \phi_19
		(>= -11.306 (x1)) ; \phi_19
		(<= -3.85 (x4)) ; \phi_19
		(>= -3.75 (x4)) ; \phi_19
		(<= -1.559 (x7)) ; \phi_19
		(>= -1.459 (x7)) ; \phi_19
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
		(<= -11.415 (x1)) ; \phi_20
		(>= -11.315 (x1)) ; \phi_20
		(<= -3.853 (x4)) ; \phi_20
		(>= -3.753 (x4)) ; \phi_20
		(<= -1.56 (x7)) ; \phi_20
		(>= -1.46 (x7)) ; \phi_20
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
		(<= -11.157 (x1)) ; \phi_21
		(>= -11.057 (x1)) ; \phi_21
		(<= -4.699 (x4)) ; \phi_21
		(>= -4.599 (x4)) ; \phi_21
		(<= -0.979 (x7)) ; \phi_21
		(>= -0.879 (x7)) ; \phi_21
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
		(<= -10.485 (x1)) ; \phi_22
		(>= -10.385 (x1)) ; \phi_22
		(<= -6.776 (x4)) ; \phi_22
		(>= -6.676 (x4)) ; \phi_22
		(<= 0.398 (x7)) ; \phi_22
		(>= 0.498 (x7)) ; \phi_22
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
		(<= -9.916 (x1)) ; \phi_23
		(>= -9.816 (x1)) ; \phi_23
		(<= -8.353 (x4)) ; \phi_23
		(>= -8.253 (x4)) ; \phi_23
		(<= 1.261 (x7)) ; \phi_23
		(>= 1.361 (x7)) ; \phi_23
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
		(<= -9.551 (x1)) ; \phi_24
		(>= -9.451 (x1)) ; \phi_24
		(<= -9.255 (x4)) ; \phi_24
		(>= -9.155 (x4)) ; \phi_24
		(<= 1.548 (x7)) ; \phi_24
		(>= 1.648 (x7)) ; \phi_24
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
		(<= -9.327 (x1)) ; \phi_25
		(>= -9.227 (x1)) ; \phi_25
		(<= -9.793 (x4)) ; \phi_25
		(>= -9.693 (x4)) ; \phi_25
		(<= 1.601 (x7)) ; \phi_25
		(>= 1.701 (x7)) ; \phi_25
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
		(<= -9.189 (x1)) ; \phi_26
		(>= -9.089 (x1)) ; \phi_26
		(<= -10.15 (x4)) ; \phi_26
		(>= -10.05 (x4)) ; \phi_26
		(<= 1.613 (x7)) ; \phi_26
		(>= 1.713 (x7)) ; \phi_26
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
		(<= -9.103 (x1)) ; \phi_27
		(>= -9.003 (x1)) ; \phi_27
		(<= -10.398 (x4)) ; \phi_27
		(>= -10.298 (x4)) ; \phi_27
		(<= 1.635 (x7)) ; \phi_27
		(>= 1.735 (x7)) ; \phi_27
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
		(<= -9.049 (x1)) ; \phi_28
		(>= -8.949 (x1)) ; \phi_28
		(<= -10.568 (x4)) ; \phi_28
		(>= -10.468 (x4)) ; \phi_28
		(<= 1.664 (x7)) ; \phi_28
		(>= 1.764 (x7)) ; \phi_28
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
		(<= -9.016 (x1)) ; \phi_29
		(>= -8.916 (x1)) ; \phi_29
		(<= -10.684 (x4)) ; \phi_29
		(>= -10.584 (x4)) ; \phi_29
		(<= 1.691 (x7)) ; \phi_29
		(>= 1.791 (x7)) ; \phi_29
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
		(<= -8.995 (x1)) ; \phi_30
		(>= -8.895 (x1)) ; \phi_30
		(<= -10.761 (x4)) ; \phi_30
		(>= -10.661 (x4)) ; \phi_30
		(<= 1.712 (x7)) ; \phi_30
		(>= 1.812 (x7)) ; \phi_30
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
		(<= -8.982 (x1)) ; \phi_31
		(>= -8.882 (x1)) ; \phi_31
		(<= -10.812 (x4)) ; \phi_31
		(>= -10.712 (x4)) ; \phi_31
		(<= 1.724 (x7)) ; \phi_31
		(>= 1.824 (x7)) ; \phi_31
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
		(<= -9.571 (x1)) ; \phi_32
		(>= -9.471 (x1)) ; \phi_32
		(<= -9.654 (x4)) ; \phi_32
		(>= -9.554 (x4)) ; \phi_32
		(<= 1.142 (x7)) ; \phi_32
		(>= 1.242 (x7)) ; \phi_32
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
		(<= -11.07 (x1)) ; \phi_33
		(>= -10.97 (x1)) ; \phi_33
		(<= -6.446 (x4)) ; \phi_33
		(>= -6.346 (x4)) ; \phi_33
		(<= -0.522 (x7)) ; \phi_33
		(>= -0.422 (x7)) ; \phi_33
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
		(<= -12.009 (x1)) ; \phi_34
		(>= -11.909 (x1)) ; \phi_34
		(<= -4.096 (x4)) ; \phi_34
		(>= -3.996 (x4)) ; \phi_34
		(<= -1.779 (x7)) ; \phi_34
		(>= -1.679 (x7)) ; \phi_34
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
		(<= -12.137 (x1)) ; \phi_35
		(>= -12.037 (x1)) ; \phi_35
		(<= -3.386 (x4)) ; \phi_35
		(>= -3.286 (x4)) ; \phi_35
		(<= -2.122 (x7)) ; \phi_35
		(>= -2.022 (x7)) ; \phi_35
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
		(<= -11.904 (x1)) ; \phi_36
		(>= -11.804 (x1)) ; \phi_36
		(<= -3.566 (x4)) ; \phi_36
		(>= -3.466 (x4)) ; \phi_36
		(<= -1.928 (x7)) ; \phi_36
		(>= -1.828 (x7)) ; \phi_36
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
		(<= -11.677 (x1)) ; \phi_37
		(>= -11.577 (x1)) ; \phi_37
		(<= -3.866 (x4)) ; \phi_37
		(>= -3.766 (x4)) ; \phi_37
		(<= -1.659 (x7)) ; \phi_37
		(>= -1.559 (x7)) ; \phi_37
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
		(<= -11.565 (x1)) ; \phi_38
		(>= -11.465 (x1)) ; \phi_38
		(<= -3.991 (x4)) ; \phi_38
		(>= -3.891 (x4)) ; \phi_38
		(<= -1.522 (x7)) ; \phi_38
		(>= -1.422 (x7)) ; \phi_38
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
		(<= -11.53 (x1)) ; \phi_39
		(>= -11.43 (x1)) ; \phi_39
		(<= -3.973 (x4)) ; \phi_39
		(>= -3.873 (x4)) ; \phi_39
		(<= -1.51 (x7)) ; \phi_39
		(>= -1.41 (x7)) ; \phi_39
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
		(<= -11.517 (x1)) ; \phi_40
		(>= -11.417 (x1)) ; \phi_40
		(<= -3.915 (x4)) ; \phi_40
		(>= -3.815 (x4)) ; \phi_40
		(<= -1.545 (x7)) ; \phi_40
		(>= -1.445 (x7)) ; \phi_40
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
		(<= -11.503 (x1)) ; \phi_41
		(>= -11.403 (x1)) ; \phi_41
		(<= -3.878 (x4)) ; \phi_41
		(>= -3.778 (x4)) ; \phi_41
		(<= -1.573 (x7)) ; \phi_41
		(>= -1.473 (x7)) ; \phi_41
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
		(<= -11.486 (x1)) ; \phi_42
		(>= -11.386 (x1)) ; \phi_42
		(<= -3.867 (x4)) ; \phi_42
		(>= -3.767 (x4)) ; \phi_42
		(<= -1.581 (x7)) ; \phi_42
		(>= -1.481 (x7)) ; \phi_42
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
		(<= -11.471 (x1)) ; \phi_43
		(>= -11.371 (x1)) ; \phi_43
		(<= -3.868 (x4)) ; \phi_43
		(>= -3.768 (x4)) ; \phi_43
		(<= -1.576 (x7)) ; \phi_43
		(>= -1.476 (x7)) ; \phi_43
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
		(<= -11.461 (x1)) ; \phi_44
		(>= -11.361 (x1)) ; \phi_44
		(<= -3.871 (x4)) ; \phi_44
		(>= -3.771 (x4)) ; \phi_44
		(<= -1.569 (x7)) ; \phi_44
		(>= -1.469 (x7)) ; \phi_44
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
		(<= -11.454 (x1)) ; \phi_45
		(>= -11.354 (x1)) ; \phi_45
		(<= -3.87 (x4)) ; \phi_45
		(>= -3.77 (x4)) ; \phi_45
		(<= -1.565 (x7)) ; \phi_45
		(>= -1.465 (x7)) ; \phi_45
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
		(<= -11.451 (x1)) ; \phi_46
		(>= -11.351 (x1)) ; \phi_46
		(<= -3.868 (x4)) ; \phi_46
		(>= -3.768 (x4)) ; \phi_46
		(<= -1.564 (x7)) ; \phi_46
		(>= -1.464 (x7)) ; \phi_46
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
		(<= -11.448 (x1)) ; \phi_47
		(>= -11.348 (x1)) ; \phi_47
		(<= -3.866 (x4)) ; \phi_47
		(>= -3.766 (x4)) ; \phi_47
		(<= -1.564 (x7)) ; \phi_47
		(>= -1.464 (x7)) ; \phi_47
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
		(<= -11.445 (x1)) ; \phi_48
		(>= -11.345 (x1)) ; \phi_48
		(<= -3.864 (x4)) ; \phi_48
		(>= -3.764 (x4)) ; \phi_48
		(<= -1.564 (x7)) ; \phi_48
		(>= -1.464 (x7)) ; \phi_48
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
		(<= -11.444 (x1)) ; \phi_49
		(>= -11.344 (x1)) ; \phi_49
		(<= -3.864 (x4)) ; \phi_49
		(>= -3.764 (x4)) ; \phi_49
		(<= -1.564 (x7)) ; \phi_49
		(>= -1.464 (x7)) ; \phi_49
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
		(<= -11.188 (x1)) ; \phi_50
		(>= -11.088 (x1)) ; \phi_50
		(<= -4.67 (x4)) ; \phi_50
		(>= -4.57 (x4)) ; \phi_50
		(<= -1.009 (x7)) ; \phi_50
		(>= -0.909 (x7)) ; \phi_50
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
		(<= -10.512 (x1)) ; \phi_51
		(>= -10.412 (x1)) ; \phi_51
		(<= -6.74 (x4)) ; \phi_51
		(>= -6.64 (x4)) ; \phi_51
		(<= 0.367 (x7)) ; \phi_51
		(>= 0.467 (x7)) ; \phi_51
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
		(<= -9.934 (x1)) ; \phi_52
		(>= -9.834 (x1)) ; \phi_52
		(<= -8.329 (x4)) ; \phi_52
		(>= -8.229 (x4)) ; \phi_52
		(<= 1.243 (x7)) ; \phi_52
		(>= 1.343 (x7)) ; \phi_52
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
		(<= -9.561 (x1)) ; \phi_53
		(>= -9.461 (x1)) ; \phi_53
		(<= -9.239 (x4)) ; \phi_53
		(>= -9.139 (x4)) ; \phi_53
		(<= 1.537 (x7)) ; \phi_53
		(>= 1.637 (x7)) ; \phi_53
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
		(<= -9.334 (x1)) ; \phi_54
		(>= -9.234 (x1)) ; \phi_54
		(<= -9.782 (x4)) ; \phi_54
		(>= -9.682 (x4)) ; \phi_54
		(<= 1.594 (x7)) ; \phi_54
		(>= 1.694 (x7)) ; \phi_54
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
		(<= -9.193 (x1)) ; \phi_55
		(>= -9.093 (x1)) ; \phi_55
		(<= -10.142 (x4)) ; \phi_55
		(>= -10.042 (x4)) ; \phi_55
		(<= 1.608 (x7)) ; \phi_55
		(>= 1.708 (x7)) ; \phi_55
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
		(<= -9.106 (x1)) ; \phi_56
		(>= -9.006 (x1)) ; \phi_56
		(<= -10.391 (x4)) ; \phi_56
		(>= -10.291 (x4)) ; \phi_56
		(<= 1.631 (x7)) ; \phi_56
		(>= 1.731 (x7)) ; \phi_56
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
		(<= -9.051 (x1)) ; \phi_57
		(>= -8.951 (x1)) ; \phi_57
		(<= -10.564 (x4)) ; \phi_57
		(>= -10.464 (x4)) ; \phi_57
		(<= 1.662 (x7)) ; \phi_57
		(>= 1.762 (x7)) ; \phi_57
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
		(<= -9.017 (x1)) ; \phi_58
		(>= -8.917 (x1)) ; \phi_58
		(<= -10.681 (x4)) ; \phi_58
		(>= -10.581 (x4)) ; \phi_58
		(<= 1.69 (x7)) ; \phi_58
		(>= 1.79 (x7)) ; \phi_58
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
		(<= -8.996 (x1)) ; \phi_59
		(>= -8.896 (x1)) ; \phi_59
		(<= -10.759 (x4)) ; \phi_59
		(>= -10.659 (x4)) ; \phi_59
		(<= 1.711 (x7)) ; \phi_59
		(>= 1.811 (x7)) ; \phi_59
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
		(<= -8.983 (x1)) ; \phi_60
		(>= -8.883 (x1)) ; \phi_60
		(<= -10.811 (x4)) ; \phi_60
		(>= -10.711 (x4)) ; \phi_60
		(<= 1.724 (x7)) ; \phi_60
		(>= 1.824 (x7)) ; \phi_60
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
		(<= 60.95 (running_time)) ; t_61 - 0.05
		(> 61.05 (running_time)) ; t_61 + 0.05
		(<= -8.974 (x1)) ; \phi_61
		(>= -8.874 (x1)) ; \phi_61
		(<= -10.845 (x4)) ; \phi_61
		(>= -10.745 (x4)) ; \phi_61
		(<= 1.731 (x7)) ; \phi_61
		(>= 1.831 (x7)) ; \phi_61
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
		(<= 61.95 (running_time)) ; t_62 - 0.05
		(> 62.05 (running_time)) ; t_62 + 0.05
		(<= -8.969 (x1)) ; \phi_62
		(>= -8.869 (x1)) ; \phi_62
		(<= -10.867 (x4)) ; \phi_62
		(>= -10.767 (x4)) ; \phi_62
		(<= 1.735 (x7)) ; \phi_62
		(>= 1.835 (x7)) ; \phi_62
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
		(<= 62.95 (running_time)) ; t_63 - 0.05
		(> 63.05 (running_time)) ; t_63 + 0.05
		(<= -8.966 (x1)) ; \phi_63
		(>= -8.866 (x1)) ; \phi_63
		(<= -10.881 (x4)) ; \phi_63
		(>= -10.781 (x4)) ; \phi_63
		(<= 1.736 (x7)) ; \phi_63
		(>= 1.836 (x7)) ; \phi_63
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
		(<= 63.95 (running_time)) ; t_64 - 0.05
		(> 64.05 (running_time)) ; t_64 + 0.05
		(<= -8.964 (x1)) ; \phi_64
		(>= -8.864 (x1)) ; \phi_64
		(<= -10.89 (x4)) ; \phi_64
		(>= -10.79 (x4)) ; \phi_64
		(<= 1.737 (x7)) ; \phi_64
		(>= 1.837 (x7)) ; \phi_64
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
		(<= 64.95 (running_time)) ; t_65 - 0.05
		(> 65.05 (running_time)) ; t_65 + 0.05
		(<= -9.538 (x1)) ; \phi_65
		(>= -9.438 (x1)) ; \phi_65
		(<= -9.753 (x4)) ; \phi_65
		(>= -9.653 (x4)) ; \phi_65
		(<= 1.173 (x7)) ; \phi_65
		(>= 1.273 (x7)) ; \phi_65
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
		(<= 65.95 (running_time)) ; t_66 - 0.05
		(> 66.05 (running_time)) ; t_66 + 0.05
		(<= -11.047 (x1)) ; \phi_66
		(>= -10.947 (x1)) ; \phi_66
		(<= -6.524 (x4)) ; \phi_66
		(>= -6.424 (x4)) ; \phi_66
		(<= -0.491 (x7)) ; \phi_66
		(>= -0.391 (x7)) ; \phi_66
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
		(<= 66.95 (running_time)) ; t_67 - 0.05
		(> 67.05 (running_time)) ; t_67 + 0.05
		(<= -12.01 (x1)) ; \phi_67
		(>= -11.91 (x1)) ; \phi_67
		(<= -4.125 (x4)) ; \phi_67
		(>= -4.025 (x4)) ; \phi_67
		(<= -1.767 (x7)) ; \phi_67
		(>= -1.667 (x7)) ; \phi_67
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
		(<= 67.95 (running_time)) ; t_68 - 0.05
		(> 68.05 (running_time)) ; t_68 + 0.05
		(<= -12.149 (x1)) ; \phi_68
		(>= -12.049 (x1)) ; \phi_68
		(<= -3.386 (x4)) ; \phi_68
		(>= -3.286 (x4)) ; \phi_68
		(<= -2.125 (x7)) ; \phi_68
		(>= -2.025 (x7)) ; \phi_68
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
		(<= 68.95 (running_time)) ; t_69 - 0.05
		(> 69.05 (running_time)) ; t_69 + 0.05
		(<= -11.915 (x1)) ; \phi_69
		(>= -11.815 (x1)) ; \phi_69
		(<= -3.559 (x4)) ; \phi_69
		(>= -3.459 (x4)) ; \phi_69
		(<= -1.934 (x7)) ; \phi_69
		(>= -1.834 (x7)) ; \phi_69
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
		(<= 69.95 (running_time)) ; t_70 - 0.05
		(> 70.05 (running_time)) ; t_70 + 0.05
		(<= -11.684 (x1)) ; \phi_70
		(>= -11.584 (x1)) ; \phi_70
		(<= -3.862 (x4)) ; \phi_70
		(>= -3.762 (x4)) ; \phi_70
		(<= -1.663 (x7)) ; \phi_70
		(>= -1.563 (x7)) ; \phi_70
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
		(<= 70.95 (running_time)) ; t_71 - 0.05
		(> 71.05 (running_time)) ; t_71 + 0.05
		(<= -11.568 (x1)) ; \phi_71
		(>= -11.468 (x1)) ; \phi_71
		(<= -3.992 (x4)) ; \phi_71
		(>= -3.892 (x4)) ; \phi_71
		(<= -1.523 (x7)) ; \phi_71
		(>= -1.423 (x7)) ; \phi_71
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
		(<= 71.95 (running_time)) ; t_72 - 0.05
		(> 72.05 (running_time)) ; t_72 + 0.05
		(<= -11.531 (x1)) ; \phi_72
		(>= -11.431 (x1)) ; \phi_72
		(<= -3.975 (x4)) ; \phi_72
		(>= -3.875 (x4)) ; \phi_72
		(<= -1.509 (x7)) ; \phi_72
		(>= -1.409 (x7)) ; \phi_72
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
		(<= 72.95 (running_time)) ; t_73 - 0.05
		(> 73.05 (running_time)) ; t_73 + 0.05
		(<= -11.519 (x1)) ; \phi_73
		(>= -11.419 (x1)) ; \phi_73
		(<= -3.917 (x4)) ; \phi_73
		(>= -3.817 (x4)) ; \phi_73
		(<= -1.544 (x7)) ; \phi_73
		(>= -1.444 (x7)) ; \phi_73
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
		(<= 73.95 (running_time)) ; t_74 - 0.05
		(> 74.05 (running_time)) ; t_74 + 0.05
		(<= -11.504 (x1)) ; \phi_74
		(>= -11.404 (x1)) ; \phi_74
		(<= -3.878 (x4)) ; \phi_74
		(>= -3.778 (x4)) ; \phi_74
		(<= -1.573 (x7)) ; \phi_74
		(>= -1.473 (x7)) ; \phi_74
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
		(<= 74.95 (running_time)) ; t_75 - 0.05
		(> 75.05 (running_time)) ; t_75 + 0.05
		(<= -11.487 (x1)) ; \phi_75
		(>= -11.387 (x1)) ; \phi_75
		(<= -3.867 (x4)) ; \phi_75
		(>= -3.767 (x4)) ; \phi_75
		(<= -1.581 (x7)) ; \phi_75
		(>= -1.481 (x7)) ; \phi_75
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
		(<= 75.95 (running_time)) ; t_76 - 0.05
		(> 76.05 (running_time)) ; t_76 + 0.05
		(<= -11.472 (x1)) ; \phi_76
		(>= -11.372 (x1)) ; \phi_76
		(<= -3.868 (x4)) ; \phi_76
		(>= -3.768 (x4)) ; \phi_76
		(<= -1.577 (x7)) ; \phi_76
		(>= -1.477 (x7)) ; \phi_76
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
		(<= 76.95 (running_time)) ; t_77 - 0.05
		(> 77.05 (running_time)) ; t_77 + 0.05
		(<= -11.461 (x1)) ; \phi_77
		(>= -11.361 (x1)) ; \phi_77
		(<= -3.871 (x4)) ; \phi_77
		(>= -3.771 (x4)) ; \phi_77
		(<= -1.57 (x7)) ; \phi_77
		(>= -1.47 (x7)) ; \phi_77
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
		(<= 77.95 (running_time)) ; t_78 - 0.05
		(> 78.05 (running_time)) ; t_78 + 0.05
		(<= -11.455 (x1)) ; \phi_78
		(>= -11.355 (x1)) ; \phi_78
		(<= -3.87 (x4)) ; \phi_78
		(>= -3.77 (x4)) ; \phi_78
		(<= -1.565 (x7)) ; \phi_78
		(>= -1.465 (x7)) ; \phi_78
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
		(<= 78.95 (running_time)) ; t_79 - 0.05
		(> 79.05 (running_time)) ; t_79 + 0.05
		(<= -11.451 (x1)) ; \phi_79
		(>= -11.351 (x1)) ; \phi_79
		(<= -3.868 (x4)) ; \phi_79
		(>= -3.768 (x4)) ; \phi_79
		(<= -1.564 (x7)) ; \phi_79
		(>= -1.464 (x7)) ; \phi_79
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
		(<= 79.95 (running_time)) ; t_80 - 0.05
		(> 80.05 (running_time)) ; t_80 + 0.05
		(<= -11.448 (x1)) ; \phi_80
		(>= -11.348 (x1)) ; \phi_80
		(<= -3.866 (x4)) ; \phi_80
		(>= -3.766 (x4)) ; \phi_80
		(<= -1.564 (x7)) ; \phi_80
		(>= -1.464 (x7)) ; \phi_80
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
		(<= 80.95 (running_time)) ; t_81 - 0.05
		(> 81.05 (running_time)) ; t_81 + 0.05
		(<= -11.446 (x1)) ; \phi_81
		(>= -11.346 (x1)) ; \phi_81
		(<= -3.864 (x4)) ; \phi_81
		(>= -3.764 (x4)) ; \phi_81
		(<= -1.564 (x7)) ; \phi_81
		(>= -1.464 (x7)) ; \phi_81
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
		(<= 81.95 (running_time)) ; t_82 - 0.05
		(> 82.05 (running_time)) ; t_82 + 0.05
		(<= -11.444 (x1)) ; \phi_82
		(>= -11.344 (x1)) ; \phi_82
		(<= -3.864 (x4)) ; \phi_82
		(>= -3.764 (x4)) ; \phi_82
		(<= -1.564 (x7)) ; \phi_82
		(>= -1.464 (x7)) ; \phi_82
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
		(<= 82.95 (running_time)) ; t_83 - 0.05
		(> 83.05 (running_time)) ; t_83 + 0.05
		(<= -11.442 (x1)) ; \phi_83
		(>= -11.342 (x1)) ; \phi_83
		(<= -3.863 (x4)) ; \phi_83
		(>= -3.763 (x4)) ; \phi_83
		(<= -1.564 (x7)) ; \phi_83
		(>= -1.464 (x7)) ; \phi_83
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
		(<= 83.95 (running_time)) ; t_84 - 0.05
		(> 84.05 (running_time)) ; t_84 + 0.05
		(<= -11.441 (x1)) ; \phi_84
		(>= -11.341 (x1)) ; \phi_84
		(<= -3.863 (x4)) ; \phi_84
		(>= -3.763 (x4)) ; \phi_84
		(<= -1.564 (x7)) ; \phi_84
		(>= -1.464 (x7)) ; \phi_84
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
		(<= 84.95 (running_time)) ; t_85 - 0.05
		(> 85.05 (running_time)) ; t_85 + 0.05
		(<= -11.198 (x1)) ; \phi_85
		(>= -11.098 (x1)) ; \phi_85
		(<= -4.633 (x4)) ; \phi_85
		(>= -4.533 (x4)) ; \phi_85
		(<= -1.033 (x7)) ; \phi_85
		(>= -0.933 (x7)) ; \phi_85
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
		(<= 85.95 (running_time)) ; t_86 - 0.05
		(> 86.05 (running_time)) ; t_86 + 0.05
		(<= -10.524 (x1)) ; \phi_86
		(>= -10.424 (x1)) ; \phi_86
		(<= -6.7 (x4)) ; \phi_86
		(>= -6.6 (x4)) ; \phi_86
		(<= 0.343 (x7)) ; \phi_86
		(>= 0.443 (x7)) ; \phi_86
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
		(<= 86.95 (running_time)) ; t_87 - 0.05
		(> 87.05 (running_time)) ; t_87 + 0.05
		(<= -9.942 (x1)) ; \phi_87
		(>= -9.842 (x1)) ; \phi_87
		(<= -8.305 (x4)) ; \phi_87
		(>= -8.205 (x4)) ; \phi_87
		(<= 1.233 (x7)) ; \phi_87
		(>= 1.333 (x7)) ; \phi_87
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
		(<= 87.95 (running_time)) ; t_88 - 0.05
		(> 88.05 (running_time)) ; t_88 + 0.05
		(<= -9.567 (x1)) ; \phi_88
		(>= -9.467 (x1)) ; \phi_88
		(<= -9.226 (x4)) ; \phi_88
		(>= -9.126 (x4)) ; \phi_88
		(<= 1.536 (x7)) ; \phi_88
		(>= 1.636 (x7)) ; \phi_88
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
		(<= 88.95 (running_time)) ; t_89 - 0.05
		(> 89.05 (running_time)) ; t_89 + 0.05
		(<= -9.337 (x1)) ; \phi_89
		(>= -9.237 (x1)) ; \phi_89
		(<= -9.773 (x4)) ; \phi_89
		(>= -9.673 (x4)) ; \phi_89
		(<= 1.594 (x7)) ; \phi_89
		(>= 1.694 (x7)) ; \phi_89
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
		(<= 89.95 (running_time)) ; t_90 - 0.05
		(> 90.05 (running_time)) ; t_90 + 0.05
		(<= -9.195 (x1)) ; \phi_90
		(>= -9.095 (x1)) ; \phi_90
		(<= -10.136 (x4)) ; \phi_90
		(>= -10.036 (x4)) ; \phi_90
		(<= 1.608 (x7)) ; \phi_90
		(>= 1.708 (x7)) ; \phi_90
	)
	:effect (and
		(not (monitor_89))
		(monitor_90)
	)
)

(:action validate_91
	:parameters ()
	:precondition (and
		(monitor_90)
		(<= 90.95 (running_time)) ; t_91 - 0.05
		(> 91.05 (running_time)) ; t_91 + 0.05
		(<= -9.107 (x1)) ; \phi_91
		(>= -9.007 (x1)) ; \phi_91
		(<= -10.387 (x4)) ; \phi_91
		(>= -10.287 (x4)) ; \phi_91
		(<= 1.631 (x7)) ; \phi_91
		(>= 1.731 (x7)) ; \phi_91
	)
	:effect (and
		(not (monitor_90))
		(monitor_91)
	)
)

(:action validate_92
	:parameters ()
	:precondition (and
		(monitor_91)
		(<= 91.95 (running_time)) ; t_92 - 0.05
		(> 92.05 (running_time)) ; t_92 + 0.05
		(<= -9.052 (x1)) ; \phi_92
		(>= -8.952 (x1)) ; \phi_92
		(<= -10.561 (x4)) ; \phi_92
		(>= -10.461 (x4)) ; \phi_92
		(<= 1.661 (x7)) ; \phi_92
		(>= 1.761 (x7)) ; \phi_92
	)
	:effect (and
		(not (monitor_91))
		(monitor_92)
	)
)

(:action validate_93
	:parameters ()
	:precondition (and
		(monitor_92)
		(<= 92.95 (running_time)) ; t_93 - 0.05
		(> 93.05 (running_time)) ; t_93 + 0.05
		(<= -9.018 (x1)) ; \phi_93
		(>= -8.918 (x1)) ; \phi_93
		(<= -10.679 (x4)) ; \phi_93
		(>= -10.579 (x4)) ; \phi_93
		(<= 1.69 (x7)) ; \phi_93
		(>= 1.79 (x7)) ; \phi_93
	)
	:effect (and
		(not (monitor_92))
		(monitor_93)
	)
)

(:action validate_94
	:parameters ()
	:precondition (and
		(monitor_93)
		(<= 93.95 (running_time)) ; t_94 - 0.05
		(> 94.05 (running_time)) ; t_94 + 0.05
		(<= -8.996 (x1)) ; \phi_94
		(>= -8.896 (x1)) ; \phi_94
		(<= -10.758 (x4)) ; \phi_94
		(>= -10.658 (x4)) ; \phi_94
		(<= 1.711 (x7)) ; \phi_94
		(>= 1.811 (x7)) ; \phi_94
	)
	:effect (and
		(not (monitor_93))
		(monitor_94)
	)
)

(:action validate_95
	:parameters ()
	:precondition (and
		(monitor_94)
		(<= 94.95 (running_time)) ; t_95 - 0.05
		(> 95.05 (running_time)) ; t_95 + 0.05
		(<= -8.983 (x1)) ; \phi_95
		(>= -8.883 (x1)) ; \phi_95
		(<= -10.81 (x4)) ; \phi_95
		(>= -10.71 (x4)) ; \phi_95
		(<= 1.724 (x7)) ; \phi_95
		(>= 1.824 (x7)) ; \phi_95
	)
	:effect (and
		(not (monitor_94))
		(monitor_95)
	)
)

(:action validate_96
	:parameters ()
	:precondition (and
		(monitor_95)
		(<= 95.95 (running_time)) ; t_96 - 0.05
		(> 96.05 (running_time)) ; t_96 + 0.05
		(<= -8.974 (x1)) ; \phi_96
		(>= -8.874 (x1)) ; \phi_96
		(<= -10.844 (x4)) ; \phi_96
		(>= -10.744 (x4)) ; \phi_96
		(<= 1.731 (x7)) ; \phi_96
		(>= 1.831 (x7)) ; \phi_96
	)
	:effect (and
		(not (monitor_95))
		(monitor_96)
	)
)

(:action validate_97
	:parameters ()
	:precondition (and
		(monitor_96)
		(<= 96.95 (running_time)) ; t_97 - 0.05
		(> 97.05 (running_time)) ; t_97 + 0.05
		(<= -8.969 (x1)) ; \phi_97
		(>= -8.869 (x1)) ; \phi_97
		(<= -10.866 (x4)) ; \phi_97
		(>= -10.766 (x4)) ; \phi_97
		(<= 1.735 (x7)) ; \phi_97
		(>= 1.835 (x7)) ; \phi_97
	)
	:effect (and
		(not (monitor_96))
		(monitor_97)
	)
)

(:action validate_98
	:parameters ()
	:precondition (and
		(monitor_97)
		(<= 97.95 (running_time)) ; t_98 - 0.05
		(> 98.05 (running_time)) ; t_98 + 0.05
		(<= -8.966 (x1)) ; \phi_98
		(>= -8.866 (x1)) ; \phi_98
		(<= -10.881 (x4)) ; \phi_98
		(>= -10.781 (x4)) ; \phi_98
		(<= 1.736 (x7)) ; \phi_98
		(>= 1.836 (x7)) ; \phi_98
	)
	:effect (and
		(not (monitor_97))
		(monitor_98)
	)
)

(:action validate_99
	:parameters ()
	:precondition (and
		(monitor_98)
		(<= 98.95 (running_time)) ; t_99 - 0.05
		(> 99.05 (running_time)) ; t_99 + 0.05
		(<= -8.964 (x1)) ; \phi_99
		(>= -8.864 (x1)) ; \phi_99
		(<= -10.89 (x4)) ; \phi_99
		(>= -10.79 (x4)) ; \phi_99
		(<= 1.737 (x7)) ; \phi_99
		(>= 1.837 (x7)) ; \phi_99
	)
	:effect (and
		(not (monitor_98))
		(monitor_99)
	)
)

(:action validate_100
	:parameters ()
	:precondition (and
		(monitor_99)
		(<= 99.95 (running_time)) ; t_100 - 0.05
		(> 100.05 (running_time)) ; t_100 + 0.05
		(<= -8.963 (x1)) ; \phi_100
		(>= -8.863 (x1)) ; \phi_100
		(<= -10.896 (x4)) ; \phi_100
		(>= -10.796 (x4)) ; \phi_100
		(<= 1.737 (x7)) ; \phi_100
		(>= 1.837 (x7)) ; \phi_100
	)
	:effect (and
		(not (monitor_99))
		(monitor_100)
	)
)

)