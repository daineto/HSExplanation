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

(:event validate_1
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

(:event validate_2
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

(:event validate_3
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

(:event validate_4
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

(:event validate_5
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

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.95 (running_time)) ; t_6 - 0.05
		(> 6.05 (running_time)) ; t_6 + 0.05
		(<= -9.07 (x1)) ; \phi_6
		(>= -8.97 (x1)) ; \phi_6
		(<= -3.938 (x4)) ; \phi_6
		(>= -3.838 (x4)) ; \phi_6
		(<= -0.607 (x7)) ; \phi_6
		(>= -0.507 (x7)) ; \phi_6
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
		(<= 6.95 (running_time)) ; t_7 - 0.05
		(> 7.05 (running_time)) ; t_7 + 0.05
		(<= -9.131 (x1)) ; \phi_7
		(>= -9.031 (x1)) ; \phi_7
		(<= -6.364 (x4)) ; \phi_7
		(>= -6.264 (x4)) ; \phi_7
		(<= 0.967 (x7)) ; \phi_7
		(>= 1.067 (x7)) ; \phi_7
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
		(<= 7.95 (running_time)) ; t_8 - 0.05
		(> 8.05 (running_time)) ; t_8 + 0.05
		(<= -9.072 (x1)) ; \phi_8
		(>= -8.972 (x1)) ; \phi_8
		(<= -8.304 (x4)) ; \phi_8
		(>= -8.204 (x4)) ; \phi_8
		(<= 2.057 (x7)) ; \phi_8
		(>= 2.157 (x7)) ; \phi_8
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
		(<= 8.95 (running_time)) ; t_9 - 0.05
		(> 9.05 (running_time)) ; t_9 + 0.05
		(<= -9.026 (x1)) ; \phi_9
		(>= -8.926 (x1)) ; \phi_9
		(<= -9.444 (x4)) ; \phi_9
		(>= -9.344 (x4)) ; \phi_9
		(<= 2.383 (x7)) ; \phi_9
		(>= 2.483 (x7)) ; \phi_9
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
		(<= 9.95 (running_time)) ; t_10 - 0.05
		(> 10.05 (running_time)) ; t_10 + 0.05
		(<= -9.001 (x1)) ; \phi_10
		(>= -8.901 (x1)) ; \phi_10
		(<= -10.07 (x4)) ; \phi_10
		(>= -9.97 (x4)) ; \phi_10
		(<= 2.297 (x7)) ; \phi_10
		(>= 2.397 (x7)) ; \phi_10
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
		(<= 10.95 (running_time)) ; t_11 - 0.05
		(> 11.05 (running_time)) ; t_11 + 0.05
		(<= -8.986 (x1)) ; \phi_11
		(>= -8.886 (x1)) ; \phi_11
		(<= -10.42 (x4)) ; \phi_11
		(>= -10.32 (x4)) ; \phi_11
		(<= 2.101 (x7)) ; \phi_11
		(>= 2.201 (x7)) ; \phi_11
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
		(<= 11.95 (running_time)) ; t_12 - 0.05
		(> 12.05 (running_time)) ; t_12 + 0.05
		(<= -8.976 (x1)) ; \phi_12
		(>= -8.876 (x1)) ; \phi_12
		(<= -10.622 (x4)) ; \phi_12
		(>= -10.522 (x4)) ; \phi_12
		(<= 1.934 (x7)) ; \phi_12
		(>= 2.034 (x7)) ; \phi_12
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
		(<= 12.95 (running_time)) ; t_13 - 0.05
		(> 13.05 (running_time)) ; t_13 + 0.05
		(<= -8.97 (x1)) ; \phi_13
		(>= -8.87 (x1)) ; \phi_13
		(<= -10.739 (x4)) ; \phi_13
		(>= -10.639 (x4)) ; \phi_13
		(<= 1.827 (x7)) ; \phi_13
		(>= 1.927 (x7)) ; \phi_13
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
		(<= 13.95 (running_time)) ; t_14 - 0.05
		(> 14.05 (running_time)) ; t_14 + 0.05
		(<= -9.557 (x1)) ; \phi_14
		(>= -9.457 (x1)) ; \phi_14
		(<= -9.619 (x4)) ; \phi_14
		(>= -9.519 (x4)) ; \phi_14
		(<= 1.177 (x7)) ; \phi_14
		(>= 1.277 (x7)) ; \phi_14
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
		(<= 14.95 (running_time)) ; t_15 - 0.05
		(> 15.05 (running_time)) ; t_15 + 0.05
		(<= -11.047 (x1)) ; \phi_15
		(>= -10.947 (x1)) ; \phi_15
		(<= -6.433 (x4)) ; \phi_15
		(>= -6.333 (x4)) ; \phi_15
		(<= -0.523 (x7)) ; \phi_15
		(>= -0.423 (x7)) ; \phi_15
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
		(<= 15.95 (running_time)) ; t_16 - 0.05
		(> 16.05 (running_time)) ; t_16 + 0.05
		(<= -11.986 (x1)) ; \phi_16
		(>= -11.886 (x1)) ; \phi_16
		(<= -4.092 (x4)) ; \phi_16
		(>= -3.992 (x4)) ; \phi_16
		(<= -1.79 (x7)) ; \phi_16
		(>= -1.69 (x7)) ; \phi_16
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
		(<= 16.95 (running_time)) ; t_17 - 0.05
		(> 17.05 (running_time)) ; t_17 + 0.05
		(<= -12.121 (x1)) ; \phi_17
		(>= -12.021 (x1)) ; \phi_17
		(<= -3.386 (x4)) ; \phi_17
		(>= -3.286 (x4)) ; \phi_17
		(<= -2.131 (x7)) ; \phi_17
		(>= -2.031 (x7)) ; \phi_17
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
		(<= 17.95 (running_time)) ; t_18 - 0.05
		(> 18.05 (running_time)) ; t_18 + 0.05
		(<= -11.893 (x1)) ; \phi_18
		(>= -11.793 (x1)) ; \phi_18
		(<= -3.566 (x4)) ; \phi_18
		(>= -3.466 (x4)) ; \phi_18
		(<= -1.93 (x7)) ; \phi_18
		(>= -1.83 (x7)) ; \phi_18
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
		(<= 18.95 (running_time)) ; t_19 - 0.05
		(> 19.05 (running_time)) ; t_19 + 0.05
		(<= -11.671 (x1)) ; \phi_19
		(>= -11.571 (x1)) ; \phi_19
		(<= -3.865 (x4)) ; \phi_19
		(>= -3.765 (x4)) ; \phi_19
		(<= -1.657 (x7)) ; \phi_19
		(>= -1.557 (x7)) ; \phi_19
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
		(<= 19.95 (running_time)) ; t_20 - 0.05
		(> 20.05 (running_time)) ; t_20 + 0.05
		(<= -11.561 (x1)) ; \phi_20
		(>= -11.461 (x1)) ; \phi_20
		(<= -3.99 (x4)) ; \phi_20
		(>= -3.89 (x4)) ; \phi_20
		(<= -1.52 (x7)) ; \phi_20
		(>= -1.42 (x7)) ; \phi_20
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
		(<= 20.95 (running_time)) ; t_21 - 0.05
		(> 21.05 (running_time)) ; t_21 + 0.05
		(<= -11.527 (x1)) ; \phi_21
		(>= -11.427 (x1)) ; \phi_21
		(<= -3.971 (x4)) ; \phi_21
		(>= -3.871 (x4)) ; \phi_21
		(<= -1.508 (x7)) ; \phi_21
		(>= -1.408 (x7)) ; \phi_21
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
		(<= 21.95 (running_time)) ; t_22 - 0.05
		(> 22.05 (running_time)) ; t_22 + 0.05
		(<= -11.515 (x1)) ; \phi_22
		(>= -11.415 (x1)) ; \phi_22
		(<= -3.914 (x4)) ; \phi_22
		(>= -3.814 (x4)) ; \phi_22
		(<= -1.544 (x7)) ; \phi_22
		(>= -1.444 (x7)) ; \phi_22
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
		(<= 22.95 (running_time)) ; t_23 - 0.05
		(> 23.05 (running_time)) ; t_23 + 0.05
		(<= -11.501 (x1)) ; \phi_23
		(>= -11.401 (x1)) ; \phi_23
		(<= -3.877 (x4)) ; \phi_23
		(>= -3.777 (x4)) ; \phi_23
		(<= -1.573 (x7)) ; \phi_23
		(>= -1.473 (x7)) ; \phi_23
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
		(<= 23.95 (running_time)) ; t_24 - 0.05
		(> 24.05 (running_time)) ; t_24 + 0.05
		(<= -11.485 (x1)) ; \phi_24
		(>= -11.385 (x1)) ; \phi_24
		(<= -3.866 (x4)) ; \phi_24
		(>= -3.766 (x4)) ; \phi_24
		(<= -1.581 (x7)) ; \phi_24
		(>= -1.481 (x7)) ; \phi_24
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
		(<= 24.95 (running_time)) ; t_25 - 0.05
		(> 25.05 (running_time)) ; t_25 + 0.05
		(<= -11.47 (x1)) ; \phi_25
		(>= -11.37 (x1)) ; \phi_25
		(<= -3.868 (x4)) ; \phi_25
		(>= -3.768 (x4)) ; \phi_25
		(<= -1.576 (x7)) ; \phi_25
		(>= -1.476 (x7)) ; \phi_25
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
		(<= 25.95 (running_time)) ; t_26 - 0.05
		(> 26.05 (running_time)) ; t_26 + 0.05
		(<= -11.46 (x1)) ; \phi_26
		(>= -11.36 (x1)) ; \phi_26
		(<= -3.87 (x4)) ; \phi_26
		(>= -3.77 (x4)) ; \phi_26
		(<= -1.569 (x7)) ; \phi_26
		(>= -1.469 (x7)) ; \phi_26
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
		(<= 26.95 (running_time)) ; t_27 - 0.05
		(> 27.05 (running_time)) ; t_27 + 0.05
		(<= -11.454 (x1)) ; \phi_27
		(>= -11.354 (x1)) ; \phi_27
		(<= -3.87 (x4)) ; \phi_27
		(>= -3.77 (x4)) ; \phi_27
		(<= -1.565 (x7)) ; \phi_27
		(>= -1.465 (x7)) ; \phi_27
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
		(<= 27.95 (running_time)) ; t_28 - 0.05
		(> 28.05 (running_time)) ; t_28 + 0.05
		(<= -11.45 (x1)) ; \phi_28
		(>= -11.35 (x1)) ; \phi_28
		(<= -3.868 (x4)) ; \phi_28
		(>= -3.768 (x4)) ; \phi_28
		(<= -1.564 (x7)) ; \phi_28
		(>= -1.464 (x7)) ; \phi_28
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
		(<= 28.95 (running_time)) ; t_29 - 0.05
		(> 29.05 (running_time)) ; t_29 + 0.05
		(<= -11.447 (x1)) ; \phi_29
		(>= -11.347 (x1)) ; \phi_29
		(<= -3.866 (x4)) ; \phi_29
		(>= -3.766 (x4)) ; \phi_29
		(<= -1.564 (x7)) ; \phi_29
		(>= -1.464 (x7)) ; \phi_29
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
		(<= 29.95 (running_time)) ; t_30 - 0.05
		(> 30.05 (running_time)) ; t_30 + 0.05
		(<= -11.445 (x1)) ; \phi_30
		(>= -11.345 (x1)) ; \phi_30
		(<= -3.864 (x4)) ; \phi_30
		(>= -3.764 (x4)) ; \phi_30
		(<= -1.564 (x7)) ; \phi_30
		(>= -1.464 (x7)) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
	)
)

(:event validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.95 (running_time)) ; t_31 - 0.05
		(> 31.05 (running_time)) ; t_31 + 0.05
		(<= -11.443 (x1)) ; \phi_31
		(>= -11.343 (x1)) ; \phi_31
		(<= -3.864 (x4)) ; \phi_31
		(>= -3.764 (x4)) ; \phi_31
		(<= -1.564 (x7)) ; \phi_31
		(>= -1.464 (x7)) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
	)
)

(:event validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.95 (running_time)) ; t_32 - 0.05
		(> 32.05 (running_time)) ; t_32 + 0.05
		(<= -11.442 (x1)) ; \phi_32
		(>= -11.342 (x1)) ; \phi_32
		(<= -3.863 (x4)) ; \phi_32
		(>= -3.763 (x4)) ; \phi_32
		(<= -1.564 (x7)) ; \phi_32
		(>= -1.464 (x7)) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
	)
)

(:event validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.95 (running_time)) ; t_33 - 0.05
		(> 33.05 (running_time)) ; t_33 + 0.05
		(<= -11.441 (x1)) ; \phi_33
		(>= -11.341 (x1)) ; \phi_33
		(<= -3.863 (x4)) ; \phi_33
		(>= -3.763 (x4)) ; \phi_33
		(<= -1.564 (x7)) ; \phi_33
		(>= -1.464 (x7)) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
	)
)

(:event validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.95 (running_time)) ; t_34 - 0.05
		(> 34.05 (running_time)) ; t_34 + 0.05
		(<= -11.187 (x1)) ; \phi_34
		(>= -11.087 (x1)) ; \phi_34
		(<= -4.669 (x4)) ; \phi_34
		(>= -4.569 (x4)) ; \phi_34
		(<= -1.008 (x7)) ; \phi_34
		(>= -0.908 (x7)) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
	)
)

(:event validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.95 (running_time)) ; t_35 - 0.05
		(> 35.05 (running_time)) ; t_35 + 0.05
		(<= -10.511 (x1)) ; \phi_35
		(>= -10.411 (x1)) ; \phi_35
		(<= -6.74 (x4)) ; \phi_35
		(>= -6.64 (x4)) ; \phi_35
		(<= 0.367 (x7)) ; \phi_35
		(>= 0.467 (x7)) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
	)
)

(:event validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.95 (running_time)) ; t_36 - 0.05
		(> 36.05 (running_time)) ; t_36 + 0.05
		(<= -9.933 (x1)) ; \phi_36
		(>= -9.833 (x1)) ; \phi_36
		(<= -8.329 (x4)) ; \phi_36
		(>= -8.229 (x4)) ; \phi_36
		(<= 1.243 (x7)) ; \phi_36
		(>= 1.343 (x7)) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
	)
)

(:event validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.95 (running_time)) ; t_37 - 0.05
		(> 37.05 (running_time)) ; t_37 + 0.05
		(<= -9.561 (x1)) ; \phi_37
		(>= -9.461 (x1)) ; \phi_37
		(<= -9.24 (x4)) ; \phi_37
		(>= -9.14 (x4)) ; \phi_37
		(<= 1.538 (x7)) ; \phi_37
		(>= 1.638 (x7)) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
	)
)

(:event validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.95 (running_time)) ; t_38 - 0.05
		(> 38.05 (running_time)) ; t_38 + 0.05
		(<= -9.333 (x1)) ; \phi_38
		(>= -9.233 (x1)) ; \phi_38
		(<= -9.782 (x4)) ; \phi_38
		(>= -9.682 (x4)) ; \phi_38
		(<= 1.594 (x7)) ; \phi_38
		(>= 1.694 (x7)) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
	)
)

(:event validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.95 (running_time)) ; t_39 - 0.05
		(> 39.05 (running_time)) ; t_39 + 0.05
		(<= -9.193 (x1)) ; \phi_39
		(>= -9.093 (x1)) ; \phi_39
		(<= -10.142 (x4)) ; \phi_39
		(>= -10.042 (x4)) ; \phi_39
		(<= 1.608 (x7)) ; \phi_39
		(>= 1.708 (x7)) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
	)
)

(:event validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.95 (running_time)) ; t_40 - 0.05
		(> 40.05 (running_time)) ; t_40 + 0.05
		(<= -9.106 (x1)) ; \phi_40
		(>= -9.006 (x1)) ; \phi_40
		(<= -10.392 (x4)) ; \phi_40
		(>= -10.292 (x4)) ; \phi_40
		(<= 1.631 (x7)) ; \phi_40
		(>= 1.731 (x7)) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
	)
)

(:event validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.95 (running_time)) ; t_41 - 0.05
		(> 41.05 (running_time)) ; t_41 + 0.05
		(<= -9.051 (x1)) ; \phi_41
		(>= -8.951 (x1)) ; \phi_41
		(<= -10.564 (x4)) ; \phi_41
		(>= -10.464 (x4)) ; \phi_41
		(<= 1.662 (x7)) ; \phi_41
		(>= 1.762 (x7)) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
	)
)

(:event validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.95 (running_time)) ; t_42 - 0.05
		(> 42.05 (running_time)) ; t_42 + 0.05
		(<= -9.017 (x1)) ; \phi_42
		(>= -8.917 (x1)) ; \phi_42
		(<= -10.681 (x4)) ; \phi_42
		(>= -10.581 (x4)) ; \phi_42
		(<= 1.69 (x7)) ; \phi_42
		(>= 1.79 (x7)) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
	)
)

(:event validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.95 (running_time)) ; t_43 - 0.05
		(> 43.05 (running_time)) ; t_43 + 0.05
		(<= -8.996 (x1)) ; \phi_43
		(>= -8.896 (x1)) ; \phi_43
		(<= -10.759 (x4)) ; \phi_43
		(>= -10.659 (x4)) ; \phi_43
		(<= 1.711 (x7)) ; \phi_43
		(>= 1.811 (x7)) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
	)
)

(:event validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.95 (running_time)) ; t_44 - 0.05
		(> 44.05 (running_time)) ; t_44 + 0.05
		(<= -8.983 (x1)) ; \phi_44
		(>= -8.883 (x1)) ; \phi_44
		(<= -10.811 (x4)) ; \phi_44
		(>= -10.711 (x4)) ; \phi_44
		(<= 1.724 (x7)) ; \phi_44
		(>= 1.824 (x7)) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
	)
)

(:event validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.95 (running_time)) ; t_45 - 0.05
		(> 45.05 (running_time)) ; t_45 + 0.05
		(<= -8.974 (x1)) ; \phi_45
		(>= -8.874 (x1)) ; \phi_45
		(<= -10.845 (x4)) ; \phi_45
		(>= -10.745 (x4)) ; \phi_45
		(<= 1.731 (x7)) ; \phi_45
		(>= 1.831 (x7)) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
	)
)

(:event validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.95 (running_time)) ; t_46 - 0.05
		(> 46.05 (running_time)) ; t_46 + 0.05
		(<= -9.542 (x1)) ; \phi_46
		(>= -9.442 (x1)) ; \phi_46
		(<= -9.726 (x4)) ; \phi_46
		(>= -9.626 (x4)) ; \phi_46
		(<= 1.172 (x7)) ; \phi_46
		(>= 1.272 (x7)) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
	)
)

(:event validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.95 (running_time)) ; t_47 - 0.05
		(> 47.05 (running_time)) ; t_47 + 0.05
		(<= -11.044 (x1)) ; \phi_47
		(>= -10.944 (x1)) ; \phi_47
		(<= -6.515 (x4)) ; \phi_47
		(>= -6.415 (x4)) ; \phi_47
		(<= -0.489 (x7)) ; \phi_47
		(>= -0.389 (x7)) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
	)
)

(:event validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.95 (running_time)) ; t_48 - 0.05
		(> 48.05 (running_time)) ; t_48 + 0.05
		(<= -12.004 (x1)) ; \phi_48
		(>= -11.904 (x1)) ; \phi_48
		(<= -4.125 (x4)) ; \phi_48
		(>= -4.025 (x4)) ; \phi_48
		(<= -1.765 (x7)) ; \phi_48
		(>= -1.665 (x7)) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
	)
)

(:event validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.95 (running_time)) ; t_49 - 0.05
		(> 49.05 (running_time)) ; t_49 + 0.05
		(<= -12.144 (x1)) ; \phi_49
		(>= -12.044 (x1)) ; \phi_49
		(<= -3.387 (x4)) ; \phi_49
		(>= -3.287 (x4)) ; \phi_49
		(<= -2.124 (x7)) ; \phi_49
		(>= -2.024 (x7)) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
	)
)

(:event validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.95 (running_time)) ; t_50 - 0.05
		(> 50.05 (running_time)) ; t_50 + 0.05
		(<= -11.912 (x1)) ; \phi_50
		(>= -11.812 (x1)) ; \phi_50
		(<= -3.56 (x4)) ; \phi_50
		(>= -3.46 (x4)) ; \phi_50
		(<= -1.934 (x7)) ; \phi_50
		(>= -1.834 (x7)) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
	)
)

(:event validate_51
	:parameters ()
	:precondition (and
		(monitor_50)
		(<= 50.95 (running_time)) ; t_51 - 0.05
		(> 51.05 (running_time)) ; t_51 + 0.05
		(<= -11.682 (x1)) ; \phi_51
		(>= -11.582 (x1)) ; \phi_51
		(<= -3.862 (x4)) ; \phi_51
		(>= -3.762 (x4)) ; \phi_51
		(<= -1.663 (x7)) ; \phi_51
		(>= -1.563 (x7)) ; \phi_51
	)
	:effect (and
		(not (monitor_50))
		(monitor_51)
	)
)

(:event validate_52
	:parameters ()
	:precondition (and
		(monitor_51)
		(<= 51.95 (running_time)) ; t_52 - 0.05
		(> 52.05 (running_time)) ; t_52 + 0.05
		(<= -11.567 (x1)) ; \phi_52
		(>= -11.467 (x1)) ; \phi_52
		(<= -3.991 (x4)) ; \phi_52
		(>= -3.891 (x4)) ; \phi_52
		(<= -1.523 (x7)) ; \phi_52
		(>= -1.423 (x7)) ; \phi_52
	)
	:effect (and
		(not (monitor_51))
		(monitor_52)
	)
)

(:event validate_53
	:parameters ()
	:precondition (and
		(monitor_52)
		(<= 52.95 (running_time)) ; t_53 - 0.05
		(> 53.05 (running_time)) ; t_53 + 0.05
		(<= -11.531 (x1)) ; \phi_53
		(>= -11.431 (x1)) ; \phi_53
		(<= -3.974 (x4)) ; \phi_53
		(>= -3.874 (x4)) ; \phi_53
		(<= -1.509 (x7)) ; \phi_53
		(>= -1.409 (x7)) ; \phi_53
	)
	:effect (and
		(not (monitor_52))
		(monitor_53)
	)
)

(:event validate_54
	:parameters ()
	:precondition (and
		(monitor_53)
		(<= 53.95 (running_time)) ; t_54 - 0.05
		(> 54.05 (running_time)) ; t_54 + 0.05
		(<= -11.518 (x1)) ; \phi_54
		(>= -11.418 (x1)) ; \phi_54
		(<= -3.916 (x4)) ; \phi_54
		(>= -3.816 (x4)) ; \phi_54
		(<= -1.544 (x7)) ; \phi_54
		(>= -1.444 (x7)) ; \phi_54
	)
	:effect (and
		(not (monitor_53))
		(monitor_54)
	)
)

(:event validate_55
	:parameters ()
	:precondition (and
		(monitor_54)
		(<= 54.95 (running_time)) ; t_55 - 0.05
		(> 55.05 (running_time)) ; t_55 + 0.05
		(<= -11.504 (x1)) ; \phi_55
		(>= -11.404 (x1)) ; \phi_55
		(<= -3.878 (x4)) ; \phi_55
		(>= -3.778 (x4)) ; \phi_55
		(<= -1.573 (x7)) ; \phi_55
		(>= -1.473 (x7)) ; \phi_55
	)
	:effect (and
		(not (monitor_54))
		(monitor_55)
	)
)

(:event validate_56
	:parameters ()
	:precondition (and
		(monitor_55)
		(<= 55.95 (running_time)) ; t_56 - 0.05
		(> 56.05 (running_time)) ; t_56 + 0.05
		(<= -11.486 (x1)) ; \phi_56
		(>= -11.386 (x1)) ; \phi_56
		(<= -3.867 (x4)) ; \phi_56
		(>= -3.767 (x4)) ; \phi_56
		(<= -1.581 (x7)) ; \phi_56
		(>= -1.481 (x7)) ; \phi_56
	)
	:effect (and
		(not (monitor_55))
		(monitor_56)
	)
)

(:event validate_57
	:parameters ()
	:precondition (and
		(monitor_56)
		(<= 56.95 (running_time)) ; t_57 - 0.05
		(> 57.05 (running_time)) ; t_57 + 0.05
		(<= -11.229 (x1)) ; \phi_57
		(>= -11.129 (x1)) ; \phi_57
		(<= -4.637 (x4)) ; \phi_57
		(>= -4.537 (x4)) ; \phi_57
		(<= -1.048 (x7)) ; \phi_57
		(>= -0.948 (x7)) ; \phi_57
	)
	:effect (and
		(not (monitor_56))
		(monitor_57)
	)
)

(:event validate_58
	:parameters ()
	:precondition (and
		(monitor_57)
		(<= 57.95 (running_time)) ; t_58 - 0.05
		(> 58.05 (running_time)) ; t_58 + 0.05
		(<= -10.543 (x1)) ; \phi_58
		(>= -10.443 (x1)) ; \phi_58
		(<= -6.701 (x4)) ; \phi_58
		(>= -6.601 (x4)) ; \phi_58
		(<= 0.328 (x7)) ; \phi_58
		(>= 0.428 (x7)) ; \phi_58
	)
	:effect (and
		(not (monitor_57))
		(monitor_58)
	)
)

(:event validate_59
	:parameters ()
	:precondition (and
		(monitor_58)
		(<= 58.95 (running_time)) ; t_59 - 0.05
		(> 59.05 (running_time)) ; t_59 + 0.05
		(<= -9.954 (x1)) ; \phi_59
		(>= -9.854 (x1)) ; \phi_59
		(<= -8.302 (x4)) ; \phi_59
		(>= -8.202 (x4)) ; \phi_59
		(<= 1.218 (x7)) ; \phi_59
		(>= 1.318 (x7)) ; \phi_59
	)
	:effect (and
		(not (monitor_58))
		(monitor_59)
	)
)

(:event validate_60
	:parameters ()
	:precondition (and
		(monitor_59)
		(<= 59.95 (running_time)) ; t_60 - 0.05
		(> 60.05 (running_time)) ; t_60 + 0.05
		(<= -9.574 (x1)) ; \phi_60
		(>= -9.474 (x1)) ; \phi_60
		(<= -9.221 (x4)) ; \phi_60
		(>= -9.121 (x4)) ; \phi_60
		(<= 1.522 (x7)) ; \phi_60
		(>= 1.622 (x7)) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
	)
)

(:event validate_61
	:parameters ()
	:precondition (and
		(monitor_60)
		(<= 60.95 (running_time)) ; t_61 - 0.05
		(> 61.05 (running_time)) ; t_61 + 0.05
		(<= -9.342 (x1)) ; \phi_61
		(>= -9.242 (x1)) ; \phi_61
		(<= -9.768 (x4)) ; \phi_61
		(>= -9.668 (x4)) ; \phi_61
		(<= 1.584 (x7)) ; \phi_61
		(>= 1.684 (x7)) ; \phi_61
	)
	:effect (and
		(not (monitor_60))
		(monitor_61)
	)
)

(:event validate_62
	:parameters ()
	:precondition (and
		(monitor_61)
		(<= 61.95 (running_time)) ; t_62 - 0.05
		(> 62.05 (running_time)) ; t_62 + 0.05
		(<= -9.198 (x1)) ; \phi_62
		(>= -9.098 (x1)) ; \phi_62
		(<= -10.131 (x4)) ; \phi_62
		(>= -10.031 (x4)) ; \phi_62
		(<= 1.601 (x7)) ; \phi_62
		(>= 1.701 (x7)) ; \phi_62
	)
	:effect (and
		(not (monitor_61))
		(monitor_62)
	)
)

(:event validate_63
	:parameters ()
	:precondition (and
		(monitor_62)
		(<= 62.95 (running_time)) ; t_63 - 0.05
		(> 63.05 (running_time)) ; t_63 + 0.05
		(<= -9.109 (x1)) ; \phi_63
		(>= -9.009 (x1)) ; \phi_63
		(<= -10.384 (x4)) ; \phi_63
		(>= -10.284 (x4)) ; \phi_63
		(<= 1.627 (x7)) ; \phi_63
		(>= 1.727 (x7)) ; \phi_63
	)
	:effect (and
		(not (monitor_62))
		(monitor_63)
	)
)

(:event validate_64
	:parameters ()
	:precondition (and
		(monitor_63)
		(<= 63.95 (running_time)) ; t_64 - 0.05
		(> 64.05 (running_time)) ; t_64 + 0.05
		(<= -9.053 (x1)) ; \phi_64
		(>= -8.953 (x1)) ; \phi_64
		(<= -10.558 (x4)) ; \phi_64
		(>= -10.458 (x4)) ; \phi_64
		(<= 1.659 (x7)) ; \phi_64
		(>= 1.759 (x7)) ; \phi_64
	)
	:effect (and
		(not (monitor_63))
		(monitor_64)
	)
)

(:event validate_65
	:parameters ()
	:precondition (and
		(monitor_64)
		(<= 64.95 (running_time)) ; t_65 - 0.05
		(> 65.05 (running_time)) ; t_65 + 0.05
		(<= -9.018 (x1)) ; \phi_65
		(>= -8.918 (x1)) ; \phi_65
		(<= -10.677 (x4)) ; \phi_65
		(>= -10.577 (x4)) ; \phi_65
		(<= 1.689 (x7)) ; \phi_65
		(>= 1.789 (x7)) ; \phi_65
	)
	:effect (and
		(not (monitor_64))
		(monitor_65)
	)
)

(:event validate_66
	:parameters ()
	:precondition (and
		(monitor_65)
		(<= 65.95 (running_time)) ; t_66 - 0.05
		(> 66.05 (running_time)) ; t_66 + 0.05
		(<= -8.997 (x1)) ; \phi_66
		(>= -8.897 (x1)) ; \phi_66
		(<= -10.756 (x4)) ; \phi_66
		(>= -10.656 (x4)) ; \phi_66
		(<= 1.71 (x7)) ; \phi_66
		(>= 1.81 (x7)) ; \phi_66
	)
	:effect (and
		(not (monitor_65))
		(monitor_66)
	)
)

(:event validate_67
	:parameters ()
	:precondition (and
		(monitor_66)
		(<= 66.95 (running_time)) ; t_67 - 0.05
		(> 67.05 (running_time)) ; t_67 + 0.05
		(<= -8.983 (x1)) ; \phi_67
		(>= -8.883 (x1)) ; \phi_67
		(<= -10.809 (x4)) ; \phi_67
		(>= -10.709 (x4)) ; \phi_67
		(<= 1.724 (x7)) ; \phi_67
		(>= 1.824 (x7)) ; \phi_67
	)
	:effect (and
		(not (monitor_66))
		(monitor_67)
	)
)

(:event validate_68
	:parameters ()
	:precondition (and
		(monitor_67)
		(<= 67.95 (running_time)) ; t_68 - 0.05
		(> 68.05 (running_time)) ; t_68 + 0.05
		(<= -8.975 (x1)) ; \phi_68
		(>= -8.875 (x1)) ; \phi_68
		(<= -10.844 (x4)) ; \phi_68
		(>= -10.744 (x4)) ; \phi_68
		(<= 1.731 (x7)) ; \phi_68
		(>= 1.831 (x7)) ; \phi_68
	)
	:effect (and
		(not (monitor_67))
		(monitor_68)
	)
)

(:event validate_69
	:parameters ()
	:precondition (and
		(monitor_68)
		(<= 68.95 (running_time)) ; t_69 - 0.05
		(> 69.05 (running_time)) ; t_69 + 0.05
		(<= -8.969 (x1)) ; \phi_69
		(>= -8.869 (x1)) ; \phi_69
		(<= -10.866 (x4)) ; \phi_69
		(>= -10.766 (x4)) ; \phi_69
		(<= 1.735 (x7)) ; \phi_69
		(>= 1.835 (x7)) ; \phi_69
	)
	:effect (and
		(not (monitor_68))
		(monitor_69)
	)
)

(:event validate_70
	:parameters ()
	:precondition (and
		(monitor_69)
		(<= 69.95 (running_time)) ; t_70 - 0.05
		(> 70.05 (running_time)) ; t_70 + 0.05
		(<= -8.966 (x1)) ; \phi_70
		(>= -8.866 (x1)) ; \phi_70
		(<= -10.881 (x4)) ; \phi_70
		(>= -10.781 (x4)) ; \phi_70
		(<= 1.736 (x7)) ; \phi_70
		(>= 1.836 (x7)) ; \phi_70
	)
	:effect (and
		(not (monitor_69))
		(monitor_70)
	)
)

(:event validate_71
	:parameters ()
	:precondition (and
		(monitor_70)
		(<= 70.95 (running_time)) ; t_71 - 0.05
		(> 71.05 (running_time)) ; t_71 + 0.05
		(<= -8.964 (x1)) ; \phi_71
		(>= -8.864 (x1)) ; \phi_71
		(<= -10.89 (x4)) ; \phi_71
		(>= -10.79 (x4)) ; \phi_71
		(<= 1.737 (x7)) ; \phi_71
		(>= 1.837 (x7)) ; \phi_71
	)
	:effect (and
		(not (monitor_70))
		(monitor_71)
	)
)

(:event validate_72
	:parameters ()
	:precondition (and
		(monitor_71)
		(<= 71.95 (running_time)) ; t_72 - 0.05
		(> 72.05 (running_time)) ; t_72 + 0.05
		(<= -8.963 (x1)) ; \phi_72
		(>= -8.863 (x1)) ; \phi_72
		(<= -10.896 (x4)) ; \phi_72
		(>= -10.796 (x4)) ; \phi_72
		(<= 1.737 (x7)) ; \phi_72
		(>= 1.837 (x7)) ; \phi_72
	)
	:effect (and
		(not (monitor_71))
		(monitor_72)
	)
)

(:event validate_73
	:parameters ()
	:precondition (and
		(monitor_72)
		(<= 72.95 (running_time)) ; t_73 - 0.05
		(> 73.05 (running_time)) ; t_73 + 0.05
		(<= -8.962 (x1)) ; \phi_73
		(>= -8.862 (x1)) ; \phi_73
		(<= -10.9 (x4)) ; \phi_73
		(>= -10.8 (x4)) ; \phi_73
		(<= 1.737 (x7)) ; \phi_73
		(>= 1.837 (x7)) ; \phi_73
	)
	:effect (and
		(not (monitor_72))
		(monitor_73)
	)
)

(:event validate_74
	:parameters ()
	:precondition (and
		(monitor_73)
		(<= 73.95 (running_time)) ; t_74 - 0.05
		(> 74.05 (running_time)) ; t_74 + 0.05
		(<= -9.511 (x1)) ; \phi_74
		(>= -9.411 (x1)) ; \phi_74
		(<= -9.811 (x4)) ; \phi_74
		(>= -9.711 (x4)) ; \phi_74
		(<= 1.2 (x7)) ; \phi_74
		(>= 1.3 (x7)) ; \phi_74
	)
	:effect (and
		(not (monitor_73))
		(monitor_74)
	)
)

(:event validate_75
	:parameters ()
	:precondition (and
		(monitor_74)
		(<= 74.95 (running_time)) ; t_75 - 0.05
		(> 75.05 (running_time)) ; t_75 + 0.05
		(<= -11.02 (x1)) ; \phi_75
		(>= -10.92 (x1)) ; \phi_75
		(<= -6.59 (x4)) ; \phi_75
		(>= -6.49 (x4)) ; \phi_75
		(<= -0.458 (x7)) ; \phi_75
		(>= -0.358 (x7)) ; \phi_75
	)
	:effect (and
		(not (monitor_74))
		(monitor_75)
	)
)

(:event validate_76
	:parameters ()
	:precondition (and
		(monitor_75)
		(<= 75.95 (running_time)) ; t_76 - 0.05
		(> 76.05 (running_time)) ; t_76 + 0.05
		(<= -12.001 (x1)) ; \phi_76
		(>= -11.901 (x1)) ; \phi_76
		(<= -4.156 (x4)) ; \phi_76
		(>= -4.056 (x4)) ; \phi_76
		(<= -1.751 (x7)) ; \phi_76
		(>= -1.651 (x7)) ; \phi_76
	)
	:effect (and
		(not (monitor_75))
		(monitor_76)
	)
)

(:event validate_77
	:parameters ()
	:precondition (and
		(monitor_76)
		(<= 76.95 (running_time)) ; t_77 - 0.05
		(> 77.05 (running_time)) ; t_77 + 0.05
		(<= -12.153 (x1)) ; \phi_77
		(>= -12.053 (x1)) ; \phi_77
		(<= -3.388 (x4)) ; \phi_77
		(>= -3.288 (x4)) ; \phi_77
		(<= -2.126 (x7)) ; \phi_77
		(>= -2.026 (x7)) ; \phi_77
	)
	:effect (and
		(not (monitor_76))
		(monitor_77)
	)
)

(:event validate_78
	:parameters ()
	:precondition (and
		(monitor_77)
		(<= 77.95 (running_time)) ; t_78 - 0.05
		(> 78.05 (running_time)) ; t_78 + 0.05
		(<= -11.921 (x1)) ; \phi_78
		(>= -11.821 (x1)) ; \phi_78
		(<= -3.553 (x4)) ; \phi_78
		(>= -3.453 (x4)) ; \phi_78
		(<= -1.94 (x7)) ; \phi_78
		(>= -1.84 (x7)) ; \phi_78
	)
	:effect (and
		(not (monitor_77))
		(monitor_78)
	)
)

(:event validate_79
	:parameters ()
	:precondition (and
		(monitor_78)
		(<= 78.95 (running_time)) ; t_79 - 0.05
		(> 79.05 (running_time)) ; t_79 + 0.05
		(<= -11.466 (x1)) ; \phi_79
		(>= -11.366 (x1)) ; \phi_79
		(<= -4.535 (x4)) ; \phi_79
		(>= -4.435 (x4)) ; \phi_79
		(<= -1.211 (x7)) ; \phi_79
		(>= -1.111 (x7)) ; \phi_79
	)
	:effect (and
		(not (monitor_78))
		(monitor_79)
	)
)

(:event validate_80
	:parameters ()
	:precondition (and
		(monitor_79)
		(<= 79.95 (running_time)) ; t_80 - 0.05
		(> 80.05 (running_time)) ; t_80 + 0.05
		(<= -10.683 (x1)) ; \phi_80
		(>= -10.583 (x1)) ; \phi_80
		(<= -6.61 (x4)) ; \phi_80
		(>= -6.51 (x4)) ; \phi_80
		(<= 0.192 (x7)) ; \phi_80
		(>= 0.292 (x7)) ; \phi_80
	)
	:effect (and
		(not (monitor_79))
		(monitor_80)
	)
)

(:event validate_81
	:parameters ()
	:precondition (and
		(monitor_80)
		(<= 80.95 (running_time)) ; t_81 - 0.05
		(> 81.05 (running_time)) ; t_81 + 0.05
		(<= -10.041 (x1)) ; \phi_81
		(>= -9.941 (x1)) ; \phi_81
		(<= -8.199 (x4)) ; \phi_81
		(>= -8.099 (x4)) ; \phi_81
		(<= 1.087 (x7)) ; \phi_81
		(>= 1.187 (x7)) ; \phi_81
	)
	:effect (and
		(not (monitor_80))
		(monitor_81)
	)
)

(:event validate_82
	:parameters ()
	:precondition (and
		(monitor_81)
		(<= 81.95 (running_time)) ; t_82 - 0.05
		(> 82.05 (running_time)) ; t_82 + 0.05
		(<= -9.628 (x1)) ; \phi_82
		(>= -9.528 (x1)) ; \phi_82
		(<= -9.128 (x4)) ; \phi_82
		(>= -9.028 (x4)) ; \phi_82
		(<= 1.418 (x7)) ; \phi_82
		(>= 1.518 (x7)) ; \phi_82
	)
	:effect (and
		(not (monitor_81))
		(monitor_82)
	)
)

(:event validate_83
	:parameters ()
	:precondition (and
		(monitor_82)
		(<= 82.95 (running_time)) ; t_83 - 0.05
		(> 83.05 (running_time)) ; t_83 + 0.05
		(<= -9.375 (x1)) ; \phi_83
		(>= -9.275 (x1)) ; \phi_83
		(<= -9.695 (x4)) ; \phi_83
		(>= -9.595 (x4)) ; \phi_83
		(<= 1.515 (x7)) ; \phi_83
		(>= 1.615 (x7)) ; \phi_83
	)
	:effect (and
		(not (monitor_82))
		(monitor_83)
	)
)

(:event validate_84
	:parameters ()
	:precondition (and
		(monitor_83)
		(<= 83.95 (running_time)) ; t_84 - 0.05
		(> 84.05 (running_time)) ; t_84 + 0.05
		(<= -9.219 (x1)) ; \phi_84
		(>= -9.119 (x1)) ; \phi_84
		(<= -10.078 (x4)) ; \phi_84
		(>= -9.978 (x4)) ; \phi_84
		(<= 1.561 (x7)) ; \phi_84
		(>= 1.661 (x7)) ; \phi_84
	)
	:effect (and
		(not (monitor_83))
		(monitor_84)
	)
)

(:event validate_85
	:parameters ()
	:precondition (and
		(monitor_84)
		(<= 84.95 (running_time)) ; t_85 - 0.05
		(> 85.05 (running_time)) ; t_85 + 0.05
		(<= -9.122 (x1)) ; \phi_85
		(>= -9.022 (x1)) ; \phi_85
		(<= -10.346 (x4)) ; \phi_85
		(>= -10.246 (x4)) ; \phi_85
		(<= 1.606 (x7)) ; \phi_85
		(>= 1.706 (x7)) ; \phi_85
	)
	:effect (and
		(not (monitor_84))
		(monitor_85)
	)
)

(:event validate_86
	:parameters ()
	:precondition (and
		(monitor_85)
		(<= 85.95 (running_time)) ; t_86 - 0.05
		(> 86.05 (running_time)) ; t_86 + 0.05
		(<= -9.56 (x1)) ; \phi_86
		(>= -9.46 (x1)) ; \phi_86
		(<= -9.531 (x4)) ; \phi_86
		(>= -9.431 (x4)) ; \phi_86
		(<= 1.151 (x7)) ; \phi_86
		(>= 1.251 (x7)) ; \phi_86
	)
	:effect (and
		(not (monitor_85))
		(monitor_86)
	)
)

(:event validate_87
	:parameters ()
	:precondition (and
		(monitor_86)
		(<= 86.95 (running_time)) ; t_87 - 0.05
		(> 87.05 (running_time)) ; t_87 + 0.05
		(<= -10.97 (x1)) ; \phi_87
		(>= -10.87 (x1)) ; \phi_87
		(<= -6.54 (x4)) ; \phi_87
		(>= -6.44 (x4)) ; \phi_87
		(<= -0.433 (x7)) ; \phi_87
		(>= -0.333 (x7)) ; \phi_87
	)
	:effect (and
		(not (monitor_86))
		(monitor_87)
	)
)

(:event validate_88
	:parameters ()
	:precondition (and
		(monitor_87)
		(<= 87.95 (running_time)) ; t_88 - 0.05
		(> 88.05 (running_time)) ; t_88 + 0.05
		(<= -11.928 (x1)) ; \phi_88
		(>= -11.828 (x1)) ; \phi_88
		(<= -4.19 (x4)) ; \phi_88
		(>= -4.09 (x4)) ; \phi_88
		(<= -1.71 (x7)) ; \phi_88
		(>= -1.61 (x7)) ; \phi_88
	)
	:effect (and
		(not (monitor_87))
		(monitor_88)
	)
)

(:event validate_89
	:parameters ()
	:precondition (and
		(monitor_88)
		(<= 88.95 (running_time)) ; t_89 - 0.05
		(> 89.05 (running_time)) ; t_89 + 0.05
		(<= -12.099 (x1)) ; \phi_89
		(>= -11.999 (x1)) ; \phi_89
		(<= -3.415 (x4)) ; \phi_89
		(>= -3.315 (x4)) ; \phi_89
		(<= -2.101 (x7)) ; \phi_89
		(>= -2.001 (x7)) ; \phi_89
	)
	:effect (and
		(not (monitor_88))
		(monitor_89)
	)
)

(:event validate_90
	:parameters ()
	:precondition (and
		(monitor_89)
		(<= 89.95 (running_time)) ; t_90 - 0.05
		(> 90.05 (running_time)) ; t_90 + 0.05
		(<= -11.891 (x1)) ; \phi_90
		(>= -11.791 (x1)) ; \phi_90
		(<= -3.554 (x4)) ; \phi_90
		(>= -3.454 (x4)) ; \phi_90
		(<= -1.935 (x7)) ; \phi_90
		(>= -1.835 (x7)) ; \phi_90
	)
	:effect (and
		(not (monitor_89))
		(monitor_90)
	)
)

(:event validate_91
	:parameters ()
	:precondition (and
		(monitor_90)
		(<= 90.95 (running_time)) ; t_91 - 0.05
		(> 91.05 (running_time)) ; t_91 + 0.05
		(<= -11.672 (x1)) ; \phi_91
		(>= -11.572 (x1)) ; \phi_91
		(<= -3.847 (x4)) ; \phi_91
		(>= -3.747 (x4)) ; \phi_91
		(<= -1.671 (x7)) ; \phi_91
		(>= -1.571 (x7)) ; \phi_91
	)
	:effect (and
		(not (monitor_90))
		(monitor_91)
	)
)

(:event validate_92
	:parameters ()
	:precondition (and
		(monitor_91)
		(<= 91.95 (running_time)) ; t_92 - 0.05
		(> 92.05 (running_time)) ; t_92 + 0.05
		(<= -11.559 (x1)) ; \phi_92
		(>= -11.459 (x1)) ; \phi_92
		(<= -3.981 (x4)) ; \phi_92
		(>= -3.881 (x4)) ; \phi_92
		(<= -1.528 (x7)) ; \phi_92
		(>= -1.428 (x7)) ; \phi_92
	)
	:effect (and
		(not (monitor_91))
		(monitor_92)
	)
)

(:event validate_93
	:parameters ()
	:precondition (and
		(monitor_92)
		(<= 92.95 (running_time)) ; t_93 - 0.05
		(> 93.05 (running_time)) ; t_93 + 0.05
		(<= -11.524 (x1)) ; \phi_93
		(>= -11.424 (x1)) ; \phi_93
		(<= -3.97 (x4)) ; \phi_93
		(>= -3.87 (x4)) ; \phi_93
		(<= -1.509 (x7)) ; \phi_93
		(>= -1.409 (x7)) ; \phi_93
	)
	:effect (and
		(not (monitor_92))
		(monitor_93)
	)
)

(:event validate_94
	:parameters ()
	:precondition (and
		(monitor_93)
		(<= 93.95 (running_time)) ; t_94 - 0.05
		(> 94.05 (running_time)) ; t_94 + 0.05
		(<= -11.288 (x1)) ; \phi_94
		(>= -11.188 (x1)) ; \phi_94
		(<= -4.623 (x4)) ; \phi_94
		(>= -4.523 (x4)) ; \phi_94
		(<= -1.056 (x7)) ; \phi_94
		(>= -0.956 (x7)) ; \phi_94
	)
	:effect (and
		(not (monitor_93))
		(monitor_94)
	)
)

(:event validate_95
	:parameters ()
	:precondition (and
		(monitor_94)
		(<= 94.95 (running_time)) ; t_95 - 0.05
		(> 95.05 (running_time)) ; t_95 + 0.05
		(<= -10.598 (x1)) ; \phi_95
		(>= -10.498 (x1)) ; \phi_95
		(<= -6.654 (x4)) ; \phi_95
		(>= -6.554 (x4)) ; \phi_95
		(<= 0.291 (x7)) ; \phi_95
		(>= 0.391 (x7)) ; \phi_95
	)
	:effect (and
		(not (monitor_94))
		(monitor_95)
	)
)

(:event validate_96
	:parameters ()
	:precondition (and
		(monitor_95)
		(<= 95.95 (running_time)) ; t_96 - 0.05
		(> 96.05 (running_time)) ; t_96 + 0.05
		(<= -9.991 (x1)) ; \phi_96
		(>= -9.891 (x1)) ; \phi_96
		(<= -8.273 (x4)) ; \phi_96
		(>= -8.173 (x4)) ; \phi_96
		(<= 1.192 (x7)) ; \phi_96
		(>= 1.292 (x7)) ; \phi_96
	)
	:effect (and
		(not (monitor_95))
		(monitor_96)
	)
)

(:event validate_97
	:parameters ()
	:precondition (and
		(monitor_96)
		(<= 96.95 (running_time)) ; t_97 - 0.05
		(> 97.05 (running_time)) ; t_97 + 0.05
		(<= -9.597 (x1)) ; \phi_97
		(>= -9.497 (x1)) ; \phi_97
		(<= -9.202 (x4)) ; \phi_97
		(>= -9.102 (x4)) ; \phi_97
		(<= 1.504 (x7)) ; \phi_97
		(>= 1.604 (x7)) ; \phi_97
	)
	:effect (and
		(not (monitor_96))
		(monitor_97)
	)
)

(:event validate_98
	:parameters ()
	:precondition (and
		(monitor_97)
		(<= 97.95 (running_time)) ; t_98 - 0.05
		(> 98.05 (running_time)) ; t_98 + 0.05
		(<= -9.355 (x1)) ; \phi_98
		(>= -9.255 (x1)) ; \phi_98
		(<= -9.752 (x4)) ; \phi_98
		(>= -9.652 (x4)) ; \phi_98
		(<= 1.568 (x7)) ; \phi_98
		(>= 1.668 (x7)) ; \phi_98
	)
	:effect (and
		(not (monitor_97))
		(monitor_98)
	)
)

(:event validate_99
	:parameters ()
	:precondition (and
		(monitor_98)
		(<= 98.95 (running_time)) ; t_99 - 0.05
		(> 99.05 (running_time)) ; t_99 + 0.05
		(<= -9.207 (x1)) ; \phi_99
		(>= -9.107 (x1)) ; \phi_99
		(<= -10.118 (x4)) ; \phi_99
		(>= -10.018 (x4)) ; \phi_99
		(<= 1.588 (x7)) ; \phi_99
		(>= 1.688 (x7)) ; \phi_99
	)
	:effect (and
		(not (monitor_98))
		(monitor_99)
	)
)

(:event validate_100
	:parameters ()
	:precondition (and
		(monitor_99)
		(<= 99.95 (running_time)) ; t_100 - 0.05
		(> 100.05 (running_time)) ; t_100 + 0.05
		(<= -9.114 (x1)) ; \phi_100
		(>= -9.014 (x1)) ; \phi_100
		(<= -10.373 (x4)) ; \phi_100
		(>= -10.273 (x4)) ; \phi_100
		(<= 1.618 (x7)) ; \phi_100
		(>= 1.718 (x7)) ; \phi_100
	)
	:effect (and
		(not (monitor_99))
		(monitor_100)
	)
)

)