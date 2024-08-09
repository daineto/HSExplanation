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
		(<= 0.995 running_time) ; t_1 - 0.05
		(> 1.005 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 -21.866) 2) (^ (- x2 -6.823) 2)) (^ 10 2) ) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
		(increase (roughness) (+ (^ (- x1 -21.866) 2) (^ (- x2 -6.823) 2)))
	)
)

(:event validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.995 running_time) ; t_2 - 0.05
		(> 2.005 running_time) ; t_2 + 0.05
		(< (+ (^ (- x1 -44.77) 2) (^ (- x2 -6.555) 2)) (^ 10 2) ) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
		(increase (roughness) (+ (^ (- x1 -44.77) 2) (^ (- x2 -6.555) 2)))
	)
)

(:event validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.995 running_time) ; t_3 - 0.05
		(> 3.005 running_time) ; t_3 + 0.05
		(< (+ (^ (- x1 -66.47) 2) (^ (- x2 0.777) 2)) (^ 10 2) ) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
		(increase (roughness) (+ (^ (- x1 -66.47) 2) (^ (- x2 0.777) 2)))
	)
)

(:event validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.995 running_time) ; t_4 - 0.05
		(> 4.005 running_time) ; t_4 + 0.05
		(< (+ (^ (- x1 -84.842) 2) (^ (- x2 14.456) 2)) (^ 10 2) ) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
		(increase (roughness) (+ (^ (- x1 -84.842) 2) (^ (- x2 14.456) 2)))
	)
)

(:event validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.995 running_time) ; t_5 - 0.05
		(> 5.005 running_time) ; t_5 + 0.05
		(< (+ (^ (- x1 -98.088) 2) (^ (- x2 33.143) 2)) (^ 10 2) ) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
		(increase (roughness) (+ (^ (- x1 -98.088) 2) (^ (- x2 33.143) 2)))
	)
)

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.995 running_time) ; t_6 - 0.05
		(> 6.005 running_time) ; t_6 + 0.05
		(< (+ (^ (- x1 -104.912) 2) (^ (- x2 55.009) 2)) (^ 10 2) ) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
		(increase (roughness) (+ (^ (- x1 -104.912) 2) (^ (- x2 55.009) 2)))
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.995 running_time) ; t_7 - 0.05
		(> 7.005 running_time) ; t_7 + 0.05
		(< (+ (^ (- x1 -104.644) 2) (^ (- x2 77.913) 2)) (^ 10 2) ) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
		(increase (roughness) (+ (^ (- x1 -104.644) 2) (^ (- x2 77.913) 2)))
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.995 running_time) ; t_8 - 0.05
		(> 8.005 running_time) ; t_8 + 0.05
		(< (+ (^ (- x1 -97.312) 2) (^ (- x2 99.613) 2)) (^ 10 2) ) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
		(increase (roughness) (+ (^ (- x1 -97.312) 2) (^ (- x2 99.613) 2)))
	)
)

(:event validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.995 running_time) ; t_9 - 0.05
		(> 9.005 running_time) ; t_9 + 0.05
		(< (+ (^ (- x1 -83.632) 2) (^ (- x2 117.985) 2)) (^ 10 2) ) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
		(increase (roughness) (+ (^ (- x1 -83.632) 2) (^ (- x2 117.985) 2)))
	)
)

(:event validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.995 running_time) ; t_10 - 0.05
		(> 10.005 running_time) ; t_10 + 0.05
		(< (+ (^ (- x1 -64.945) 2) (^ (- x2 131.231) 2)) (^ 10 2) ) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
		(increase (roughness) (+ (^ (- x1 -64.945) 2) (^ (- x2 131.231) 2)))
	)
)

(:event validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.995 running_time) ; t_11 - 0.05
		(> 11.005 running_time) ; t_11 + 0.05
		(< (+ (^ (- x1 -43.08) 2) (^ (- x2 138.055) 2)) (^ 10 2) ) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
		(increase (roughness) (+ (^ (- x1 -43.08) 2) (^ (- x2 138.055) 2)))
	)
)

(:event validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.995 running_time) ; t_12 - 0.05
		(> 12.005 running_time) ; t_12 + 0.05
		(< (+ (^ (- x1 -20.121) 2) (^ (- x2 139.151) 2)) (^ 10 2) ) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
		(increase (roughness) (+ (^ (- x1 -20.121) 2) (^ (- x2 139.151) 2)))
	)
)

(:event validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.995 running_time) ; t_13 - 0.05
		(> 13.005 running_time) ; t_13 + 0.05
		(< (+ (^ (- x1 2.876) 2) (^ (- x2 139.508) 2)) (^ 10 2) ) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
		(increase (roughness) (+ (^ (- x1 2.876) 2) (^ (- x2 139.508) 2)))
	)
)

(:event validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.995 running_time) ; t_14 - 0.05
		(> 14.005 running_time) ; t_14 + 0.05
		(< (+ (^ (- x1 25.876) 2) (^ (- x2 139.579) 2)) (^ 10 2) ) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
		(increase (roughness) (+ (^ (- x1 25.876) 2) (^ (- x2 139.579) 2)))
	)
)

(:event validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.995 running_time) ; t_15 - 0.05
		(> 15.005 running_time) ; t_15 + 0.05
		(< (+ (^ (- x1 48.874) 2) (^ (- x2 139.316) 2)) (^ 10 2) ) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
		(increase (roughness) (+ (^ (- x1 48.874) 2) (^ (- x2 139.316) 2)))
	)
)

(:event validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.995 running_time) ; t_16 - 0.05
		(> 16.005 running_time) ; t_16 + 0.05
		(< (+ (^ (- x1 71.864) 2) (^ (- x2 138.651) 2)) (^ 10 2) ) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
		(increase (roughness) (+ (^ (- x1 71.864) 2) (^ (- x2 138.651) 2)))
	)
)

(:event validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.995 running_time) ; t_17 - 0.05
		(> 17.005 running_time) ; t_17 + 0.05
		(< (+ (^ (- x1 94.833) 2) (^ (- x2 137.481) 2)) (^ 10 2) ) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
		(increase (roughness) (+ (^ (- x1 94.833) 2) (^ (- x2 137.481) 2)))
	)
)

(:event validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.995 running_time) ; t_18 - 0.05
		(> 18.005 running_time) ; t_18 + 0.05
		(< (+ (^ (- x1 117.709) 2) (^ (- x2 138.773) 2)) (^ 10 2) ) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
		(increase (roughness) (+ (^ (- x1 117.709) 2) (^ (- x2 138.773) 2)))
	)
)

(:event validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.995 running_time) ; t_19 - 0.05
		(> 19.005 running_time) ; t_19 + 0.05
		(< (+ (^ (- x1 139.773) 2) (^ (- x2 145.248) 2)) (^ 10 2) ) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
		(increase (roughness) (+ (^ (- x1 139.773) 2) (^ (- x2 145.248) 2)))
	)
)

(:event validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.995 running_time) ; t_20 - 0.05
		(> 20.005 running_time) ; t_20 + 0.05
		(< (+ (^ (- x1 161.713) 2) (^ (- x2 152.15) 2)) (^ 10 2) ) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
		(increase (roughness) (+ (^ (- x1 161.713) 2) (^ (- x2 152.15) 2)))
	)
)

(:event validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.995 running_time) ; t_21 - 0.05
		(> 21.005 running_time) ; t_21 + 0.05
		(< (+ (^ (- x1 183.583) 2) (^ (- x2 159.27) 2)) (^ 10 2) ) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
		(increase (roughness) (+ (^ (- x1 183.583) 2) (^ (- x2 159.27) 2)))
	)
)

(:event validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.995 running_time) ; t_22 - 0.05
		(> 22.005 running_time) ; t_22 + 0.05
		(< (+ (^ (- x1 205.373) 2) (^ (- x2 166.631) 2)) (^ 10 2) ) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
		(increase (roughness) (+ (^ (- x1 205.373) 2) (^ (- x2 166.631) 2)))
	)
)

(:event validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.995 running_time) ; t_23 - 0.05
		(> 23.005 running_time) ; t_23 + 0.05
		(< (+ (^ (- x1 227.067) 2) (^ (- x2 174.27) 2)) (^ 10 2) ) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
		(increase (roughness) (+ (^ (- x1 227.067) 2) (^ (- x2 174.27) 2)))
	)
)

(:event validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.995 running_time) ; t_24 - 0.05
		(> 24.005 running_time) ; t_24 + 0.05
		(< (+ (^ (- x1 248.644) 2) (^ (- x2 182.234) 2)) (^ 10 2) ) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
		(increase (roughness) (+ (^ (- x1 248.644) 2) (^ (- x2 182.234) 2)))
	)
)

(:event validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.995 running_time) ; t_25 - 0.05
		(> 25.005 running_time) ; t_25 + 0.05
		(< (+ (^ (- x1 270.071) 2) (^ (- x2 190.592) 2)) (^ 10 2) ) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
		(increase (roughness) (+ (^ (- x1 270.071) 2) (^ (- x2 190.592) 2)))
	)
)

(:event validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.995 running_time) ; t_26 - 0.05
		(> 26.005 running_time) ; t_26 + 0.05
		(< (+ (^ (- x1 291.309) 2) (^ (- x2 199.419) 2)) (^ 10 2) ) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
		(increase (roughness) (+ (^ (- x1 291.309) 2) (^ (- x2 199.419) 2)))
	)
)

(:event validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.995 running_time) ; t_27 - 0.05
		(> 27.005 running_time) ; t_27 + 0.05
		(< (+ (^ (- x1 313.643) 2) (^ (- x2 204.506) 2)) (^ 10 2) ) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
		(increase (roughness) (+ (^ (- x1 313.643) 2) (^ (- x2 204.506) 2)))
	)
)

(:event validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.995 running_time) ; t_28 - 0.05
		(> 28.005 running_time) ; t_28 + 0.05
		(< (+ (^ (- x1 336.59) 2) (^ (- x2 206.058) 2)) (^ 10 2) ) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
		(increase (roughness) (+ (^ (- x1 336.59) 2) (^ (- x2 206.058) 2)))
	)
)

(:event validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.995 running_time) ; t_29 - 0.05
		(> 29.005 running_time) ; t_29 + 0.05
		(< (+ (^ (- x1 359.552) 2) (^ (- x2 207.38) 2)) (^ 10 2) ) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
		(increase (roughness) (+ (^ (- x1 359.552) 2) (^ (- x2 207.38) 2)))
	)
)

(:event validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.995 running_time) ; t_30 - 0.05
		(> 30.005 running_time) ; t_30 + 0.05
		(< (+ (^ (- x1 382.527) 2) (^ (- x2 208.44) 2)) (^ 10 2) ) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
		(increase (roughness) (+ (^ (- x1 382.527) 2) (^ (- x2 208.44) 2)))
	)
)

(:event validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.995 running_time) ; t_31 - 0.05
		(> 31.005 running_time) ; t_31 + 0.05
		(< (+ (^ (- x1 405.515) 2) (^ (- x2 209.2) 2)) (^ 10 2) ) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
		(increase (roughness) (+ (^ (- x1 405.515) 2) (^ (- x2 209.2) 2)))
	)
)

(:event validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.995 running_time) ; t_32 - 0.05
		(> 32.005 running_time) ; t_32 + 0.05
		(< (+ (^ (- x1 428.511) 2) (^ (- x2 209.602) 2)) (^ 10 2) ) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
		(increase (roughness) (+ (^ (- x1 428.511) 2) (^ (- x2 209.602) 2)))
	)
)

(:event validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.995 running_time) ; t_33 - 0.05
		(> 33.005 running_time) ; t_33 + 0.05
		(< (+ (^ (- x1 451.51) 2) (^ (- x2 209.568) 2)) (^ 10 2) ) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
		(increase (roughness) (+ (^ (- x1 451.51) 2) (^ (- x2 209.568) 2)))
	)
)

(:event validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.995 running_time) ; t_34 - 0.05
		(> 34.005 running_time) ; t_34 + 0.05
		(< (+ (^ (- x1 474.489) 2) (^ (- x2 208.767) 2)) (^ 10 2) ) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
		(increase (roughness) (+ (^ (- x1 474.489) 2) (^ (- x2 208.767) 2)))
	)
)

(:event validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.995 running_time) ; t_35 - 0.05
		(> 35.005 running_time) ; t_35 + 0.05
		(< (+ (^ (- x1 496.569) 2) (^ (- x2 202.673) 2)) (^ 10 2) ) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
		(increase (roughness) (+ (^ (- x1 496.569) 2) (^ (- x2 202.673) 2)))
	)
)

(:event validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.995 running_time) ; t_36 - 0.05
		(> 36.005 running_time) ; t_36 + 0.05
		(< (+ (^ (- x1 515.685) 2) (^ (- x2 190.054) 2)) (^ 10 2) ) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
		(increase (roughness) (+ (^ (- x1 515.685) 2) (^ (- x2 190.054) 2)))
	)
)

(:event validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.995 running_time) ; t_37 - 0.05
		(> 37.005 running_time) ; t_37 + 0.05
		(< (+ (^ (- x1 529.966) 2) (^ (- x2 172.145) 2)) (^ 10 2) ) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
		(increase (roughness) (+ (^ (- x1 529.966) 2) (^ (- x2 172.145) 2)))
	)
)

(:event validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.995 running_time) ; t_38 - 0.05
		(> 38.005 running_time) ; t_38 + 0.05
		(< (+ (^ (- x1 538.014) 2) (^ (- x2 150.7) 2)) (^ 10 2) ) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
		(increase (roughness) (+ (^ (- x1 538.014) 2) (^ (- x2 150.7) 2)))
	)
)

(:event validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.995 running_time) ; t_39 - 0.05
		(> 39.005 running_time) ; t_39 + 0.05
		(< (+ (^ (- x1 539.041) 2) (^ (- x2 127.818) 2)) (^ 10 2) ) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
		(increase (roughness) (+ (^ (- x1 539.041) 2) (^ (- x2 127.818) 2)))
	)
)

(:event validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.995 running_time) ; t_40 - 0.05
		(> 40.005 running_time) ; t_40 + 0.05
		(< (+ (^ (- x1 532.947) 2) (^ (- x2 105.738) 2)) (^ 10 2) ) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
		(increase (roughness) (+ (^ (- x1 532.947) 2) (^ (- x2 105.738) 2)))
	)
)

(:event validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.995 running_time) ; t_41 - 0.05
		(> 41.005 running_time) ; t_41 + 0.05
		(< (+ (^ (- x1 520.328) 2) (^ (- x2 86.622) 2)) (^ 10 2) ) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
		(increase (roughness) (+ (^ (- x1 520.328) 2) (^ (- x2 86.622) 2)))
	)
)

(:event validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.995 running_time) ; t_42 - 0.05
		(> 42.005 running_time) ; t_42 + 0.05
		(< (+ (^ (- x1 502.42) 2) (^ (- x2 72.341) 2)) (^ 10 2) ) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
		(increase (roughness) (+ (^ (- x1 502.42) 2) (^ (- x2 72.341) 2)))
	)
)

(:event validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.995 running_time) ; t_43 - 0.05
		(> 43.005 running_time) ; t_43 + 0.05
		(< (+ (^ (- x1 481.638) 2) (^ (- x2 62.5) 2)) (^ 10 2) ) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
		(increase (roughness) (+ (^ (- x1 481.638) 2) (^ (- x2 62.5) 2)))
	)
)

(:event validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.995 running_time) ; t_44 - 0.05
		(> 44.005 running_time) ; t_44 + 0.05
		(< (+ (^ (- x1 460.62) 2) (^ (- x2 53.161) 2)) (^ 10 2) ) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
		(increase (roughness) (+ (^ (- x1 460.62) 2) (^ (- x2 53.161) 2)))
	)
)

(:event validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.995 running_time) ; t_45 - 0.05
		(> 45.005 running_time) ; t_45 + 0.05
		(< (+ (^ (- x1 439.446) 2) (^ (- x2 44.18) 2)) (^ 10 2) ) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
		(increase (roughness) (+ (^ (- x1 439.446) 2) (^ (- x2 44.18) 2)))
	)
)

(:event validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.995 running_time) ; t_46 - 0.05
		(> 46.005 running_time) ; t_46 + 0.05
		(< (+ (^ (- x1 418.087) 2) (^ (- x2 35.65) 2)) (^ 10 2) ) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
		(increase (roughness) (+ (^ (- x1 418.087) 2) (^ (- x2 35.65) 2)))
	)
)

(:event validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.995 running_time) ; t_47 - 0.05
		(> 47.005 running_time) ; t_47 + 0.05
		(< (+ (^ (- x1 396.04) 2) (^ (- x2 29.337) 2)) (^ 10 2) ) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
		(increase (roughness) (+ (^ (- x1 396.04) 2) (^ (- x2 29.337) 2)))
	)
)

(:event validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.995 running_time) ; t_48 - 0.05
		(> 48.005 running_time) ; t_48 + 0.05
		(< (+ (^ (- x1 373.141) 2) (^ (- x2 29.893) 2)) (^ 10 2) ) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
		(increase (roughness) (+ (^ (- x1 373.141) 2) (^ (- x2 29.893) 2)))
	)
)

(:event validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.995 running_time) ; t_49 - 0.05
		(> 49.005 running_time) ; t_49 + 0.05
		(< (+ (^ (- x1 351.535) 2) (^ (- x2 37.497) 2)) (^ 10 2) ) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
		(increase (roughness) (+ (^ (- x1 351.535) 2) (^ (- x2 37.497) 2)))
	)
)

(:event validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.995 running_time) ; t_50 - 0.05
		(> 50.005 running_time) ; t_50 + 0.05
		(< (+ (^ (- x1 333.336) 2) (^ (- x2 51.406) 2)) (^ 10 2) ) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
		(increase (roughness) (+ (^ (- x1 333.336) 2) (^ (- x2 51.406) 2)))
	)
)

(:event validate_51
	:parameters ()
	:precondition (and
		(monitor_50)
		(<= 50.995 running_time) ; t_51 - 0.05
		(> 51.005 running_time) ; t_51 + 0.05
		(< (+ (^ (- x1 320.061) 2) (^ (- x2 70.111) 2)) (^ 10 2) ) ; \phi_51
	)
	:effect (and
		(not (monitor_50))
		(monitor_51)
		(increase (roughness) (+ (^ (- x1 320.061) 2) (^ (- x2 70.111) 2)))
	)
)

(:event validate_52
	:parameters ()
	:precondition (and
		(monitor_51)
		(<= 51.995 running_time) ; t_52 - 0.05
		(> 52.005 running_time) ; t_52 + 0.05
		(< (+ (^ (- x1 308.273) 2) (^ (- x2 89.86) 2)) (^ 10 2) ) ; \phi_52
	)
	:effect (and
		(not (monitor_51))
		(monitor_52)
		(increase (roughness) (+ (^ (- x1 308.273) 2) (^ (- x2 89.86) 2)))
	)
)

(:event validate_53
	:parameters ()
	:precondition (and
		(monitor_52)
		(<= 52.995 running_time) ; t_53 - 0.05
		(> 53.005 running_time) ; t_53 + 0.05
		(< (+ (^ (- x1 296.486) 2) (^ (- x2 109.61) 2)) (^ 10 2) ) ; \phi_53
	)
	:effect (and
		(not (monitor_52))
		(monitor_53)
		(increase (roughness) (+ (^ (- x1 296.486) 2) (^ (- x2 109.61) 2)))
	)
)

(:event validate_54
	:parameters ()
	:precondition (and
		(monitor_53)
		(<= 53.995 running_time) ; t_54 - 0.05
		(> 54.005 running_time) ; t_54 + 0.05
		(< (+ (^ (- x1 284.688) 2) (^ (- x2 129.354) 2)) (^ 10 2) ) ; \phi_54
	)
	:effect (and
		(not (monitor_53))
		(monitor_54)
		(increase (roughness) (+ (^ (- x1 284.688) 2) (^ (- x2 129.354) 2)))
	)
)

(:event validate_55
	:parameters ()
	:precondition (and
		(monitor_54)
		(<= 54.995 running_time) ; t_55 - 0.05
		(> 55.005 running_time) ; t_55 + 0.05
		(< (+ (^ (- x1 272.87) 2) (^ (- x2 149.085) 2)) (^ 10 2) ) ; \phi_55
	)
	:effect (and
		(not (monitor_54))
		(monitor_55)
		(increase (roughness) (+ (^ (- x1 272.87) 2) (^ (- x2 149.085) 2)))
	)
)

(:event validate_56
	:parameters ()
	:precondition (and
		(monitor_55)
		(<= 55.995 running_time) ; t_56 - 0.05
		(> 56.005 running_time) ; t_56 + 0.05
		(< (+ (^ (- x1 261.051) 2) (^ (- x2 168.816) 2)) (^ 10 2) ) ; \phi_56
	)
	:effect (and
		(not (monitor_55))
		(monitor_56)
		(increase (roughness) (+ (^ (- x1 261.051) 2) (^ (- x2 168.816) 2)))
	)
)

(:event validate_57
	:parameters ()
	:precondition (and
		(monitor_56)
		(<= 56.995 running_time) ; t_57 - 0.05
		(> 57.005 running_time) ; t_57 + 0.05
		(< (+ (^ (- x1 250.446) 2) (^ (- x2 189.172) 2)) (^ 10 2) ) ; \phi_57
	)
	:effect (and
		(not (monitor_56))
		(monitor_57)
		(increase (roughness) (+ (^ (- x1 250.446) 2) (^ (- x2 189.172) 2)))
	)
)

(:event validate_58
	:parameters ()
	:precondition (and
		(monitor_57)
		(<= 57.995 running_time) ; t_58 - 0.05
		(> 58.005 running_time) ; t_58 + 0.05
		(< (+ (^ (- x1 246.134) 2) (^ (- x2 211.668) 2)) (^ 10 2) ) ; \phi_58
	)
	:effect (and
		(not (monitor_57))
		(monitor_58)
		(increase (roughness) (+ (^ (- x1 246.134) 2) (^ (- x2 211.668) 2)))
	)
)

(:event validate_59
	:parameters ()
	:precondition (and
		(monitor_58)
		(<= 58.995 running_time) ; t_59 - 0.05
		(> 59.005 running_time) ; t_59 + 0.05
		(< (+ (^ (- x1 248.985) 2) (^ (- x2 234.395) 2)) (^ 10 2) ) ; \phi_59
	)
	:effect (and
		(not (monitor_58))
		(monitor_59)
		(increase (roughness) (+ (^ (- x1 248.985) 2) (^ (- x2 234.395) 2)))
	)
)

(:event validate_60
	:parameters ()
	:precondition (and
		(monitor_59)
		(<= 59.995 running_time) ; t_60 - 0.05
		(> 60.005 running_time) ; t_60 + 0.05
		(< (+ (^ (- x1 258.72) 2) (^ (- x2 255.13) 2)) (^ 10 2) ) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
		(increase (roughness) (+ (^ (- x1 258.72) 2) (^ (- x2 255.13) 2)))
	)
)

(:event validate_61
	:parameters ()
	:precondition (and
		(monitor_60)
		(<= 60.995 running_time) ; t_61 - 0.05
		(> 61.005 running_time) ; t_61 + 0.05
		(< (+ (^ (- x1 271.631) 2) (^ (- x2 274.164) 2)) (^ 10 2) ) ; \phi_61
	)
	:effect (and
		(not (monitor_60))
		(monitor_61)
		(increase (roughness) (+ (^ (- x1 271.631) 2) (^ (- x2 274.164) 2)))
	)
)

(:event validate_62
	:parameters ()
	:precondition (and
		(monitor_61)
		(<= 61.995 running_time) ; t_62 - 0.05
		(> 62.005 running_time) ; t_62 + 0.05
		(< (+ (^ (- x1 284.542) 2) (^ (- x2 293.198) 2)) (^ 10 2) ) ; \phi_62
	)
	:effect (and
		(not (monitor_61))
		(monitor_62)
		(increase (roughness) (+ (^ (- x1 284.542) 2) (^ (- x2 293.198) 2)))
	)
)

(:event validate_63
	:parameters ()
	:precondition (and
		(monitor_62)
		(<= 62.995 running_time) ; t_63 - 0.05
		(> 63.005 running_time) ; t_63 + 0.05
		(< (+ (^ (- x1 297.424) 2) (^ (- x2 312.252) 2)) (^ 10 2) ) ; \phi_63
	)
	:effect (and
		(not (monitor_62))
		(monitor_63)
		(increase (roughness) (+ (^ (- x1 297.424) 2) (^ (- x2 312.252) 2)))
	)
)

(:event validate_64
	:parameters ()
	:precondition (and
		(monitor_63)
		(<= 63.995 running_time) ; t_64 - 0.05
		(> 64.005 running_time) ; t_64 + 0.05
		(< (+ (^ (- x1 310.614) 2) (^ (- x2 331.082) 2)) (^ 10 2) ) ; \phi_64
	)
	:effect (and
		(not (monitor_63))
		(monitor_64)
		(increase (roughness) (+ (^ (- x1 310.614) 2) (^ (- x2 331.082) 2)))
	)
)

(:event validate_65
	:parameters ()
	:precondition (and
		(monitor_64)
		(<= 64.995 running_time) ; t_65 - 0.05
		(> 65.005 running_time) ; t_65 + 0.05
		(< (+ (^ (- x1 327.877) 2) (^ (- x2 346.136) 2)) (^ 10 2) ) ; \phi_65
	)
	:effect (and
		(not (monitor_64))
		(monitor_65)
		(increase (roughness) (+ (^ (- x1 327.877) 2) (^ (- x2 346.136) 2)))
	)
)

(:event validate_66
	:parameters ()
	:precondition (and
		(monitor_65)
		(<= 65.995 running_time) ; t_66 - 0.05
		(> 66.005 running_time) ; t_66 + 0.05
		(< (+ (^ (- x1 348.948) 2) (^ (- x2 355.12) 2)) (^ 10 2) ) ; \phi_66
	)
	:effect (and
		(not (monitor_65))
		(monitor_66)
		(increase (roughness) (+ (^ (- x1 348.948) 2) (^ (- x2 355.12) 2)))
	)
)

(:event validate_67
	:parameters ()
	:precondition (and
		(monitor_66)
		(<= 66.995 running_time) ; t_67 - 0.05
		(> 67.005 running_time) ; t_67 + 0.05
		(< (+ (^ (- x1 371.763) 2) (^ (- x2 357.152) 2)) (^ 10 2) ) ; \phi_67
	)
	:effect (and
		(not (monitor_66))
		(monitor_67)
		(increase (roughness) (+ (^ (- x1 371.763) 2) (^ (- x2 357.152) 2)))
	)
)

(:event validate_68
	:parameters ()
	:precondition (and
		(monitor_67)
		(<= 67.995 running_time) ; t_68 - 0.05
		(> 68.005 running_time) ; t_68 + 0.05
		(< (+ (^ (- x1 394.09) 2) (^ (- x2 352.035) 2)) (^ 10 2) ) ; \phi_68
	)
	:effect (and
		(not (monitor_67))
		(monitor_68)
		(increase (roughness) (+ (^ (- x1 394.09) 2) (^ (- x2 352.035) 2)))
	)
)

(:event validate_69
	:parameters ()
	:precondition (and
		(monitor_68)
		(<= 68.995 running_time) ; t_69 - 0.05
		(> 69.005 running_time) ; t_69 + 0.05
		(< (+ (^ (- x1 413.742) 2) (^ (- x2 340.268) 2)) (^ 10 2) ) ; \phi_69
	)
	:effect (and
		(not (monitor_68))
		(monitor_69)
		(increase (roughness) (+ (^ (- x1 413.742) 2) (^ (- x2 340.268) 2)))
	)
)

(:event validate_70
	:parameters ()
	:precondition (and
		(monitor_69)
		(<= 69.995 running_time) ; t_70 - 0.05
		(> 70.005 running_time) ; t_70 + 0.05
		(< (+ (^ (- x1 431.067) 2) (^ (- x2 325.141) 2)) (^ 10 2) ) ; \phi_70
	)
	:effect (and
		(not (monitor_69))
		(monitor_70)
		(increase (roughness) (+ (^ (- x1 431.067) 2) (^ (- x2 325.141) 2)))
	)
)

(:event validate_71
	:parameters ()
	:precondition (and
		(monitor_70)
		(<= 70.995 running_time) ; t_71 - 0.05
		(> 71.005 running_time) ; t_71 + 0.05
		(< (+ (^ (- x1 448.381) 2) (^ (- x2 310.0) 2)) (^ 10 2) ) ; \phi_71
	)
	:effect (and
		(not (monitor_70))
		(monitor_71)
		(increase (roughness) (+ (^ (- x1 448.381) 2) (^ (- x2 310.0) 2)))
	)
)

(:event validate_72
	:parameters ()
	:precondition (and
		(monitor_71)
		(<= 71.995 running_time) ; t_72 - 0.05
		(> 72.005 running_time) ; t_72 + 0.05
		(< (+ (^ (- x1 465.449) 2) (^ (- x2 294.596) 2)) (^ 10 2) ) ; \phi_72
	)
	:effect (and
		(not (monitor_71))
		(monitor_72)
		(increase (roughness) (+ (^ (- x1 465.449) 2) (^ (- x2 294.596) 2)))
	)
)

(:event validate_73
	:parameters ()
	:precondition (and
		(monitor_72)
		(<= 72.995 running_time) ; t_73 - 0.05
		(> 73.005 running_time) ; t_73 + 0.05
		(< (+ (^ (- x1 478.34) 2) (^ (- x2 275.663) 2)) (^ 10 2) ) ; \phi_73
	)
	:effect (and
		(not (monitor_72))
		(monitor_73)
		(increase (roughness) (+ (^ (- x1 478.34) 2) (^ (- x2 275.663) 2)))
	)
)

(:event validate_74
	:parameters ()
	:precondition (and
		(monitor_73)
		(<= 73.995 running_time) ; t_74 - 0.05
		(> 74.005 running_time) ; t_74 + 0.05
		(< (+ (^ (- x1 484.75) 2) (^ (- x2 253.672) 2)) (^ 10 2) ) ; \phi_74
	)
	:effect (and
		(not (monitor_73))
		(monitor_74)
		(increase (roughness) (+ (^ (- x1 484.75) 2) (^ (- x2 253.672) 2)))
	)
)

(:event validate_75
	:parameters ()
	:precondition (and
		(monitor_74)
		(<= 74.995 running_time) ; t_75 - 0.05
		(> 75.005 running_time) ; t_75 + 0.05
		(< (+ (^ (- x1 484.086) 2) (^ (- x2 230.772) 2)) (^ 10 2) ) ; \phi_75
	)
	:effect (and
		(not (monitor_74))
		(monitor_75)
		(increase (roughness) (+ (^ (- x1 484.086) 2) (^ (- x2 230.772) 2)))
	)
)

(:event validate_76
	:parameters ()
	:precondition (and
		(monitor_75)
		(<= 75.995 running_time) ; t_76 - 0.05
		(> 76.005 running_time) ; t_76 + 0.05
		(< (+ (^ (- x1 480.508) 2) (^ (- x2 208.052) 2)) (^ 10 2) ) ; \phi_76
	)
	:effect (and
		(not (monitor_75))
		(monitor_76)
		(increase (roughness) (+ (^ (- x1 480.508) 2) (^ (- x2 208.052) 2)))
	)
)

(:event validate_77
	:parameters ()
	:precondition (and
		(monitor_76)
		(<= 76.995 running_time) ; t_77 - 0.05
		(> 77.005 running_time) ; t_77 + 0.05
		(< (+ (^ (- x1 476.93) 2) (^ (- x2 185.332) 2)) (^ 10 2) ) ; \phi_77
	)
	:effect (and
		(not (monitor_76))
		(monitor_77)
		(increase (roughness) (+ (^ (- x1 476.93) 2) (^ (- x2 185.332) 2)))
	)
)

(:event validate_78
	:parameters ()
	:precondition (and
		(monitor_77)
		(<= 77.995 running_time) ; t_78 - 0.05
		(> 78.005 running_time) ; t_78 + 0.05
		(< (+ (^ (- x1 473.352) 2) (^ (- x2 162.612) 2)) (^ 10 2) ) ; \phi_78
	)
	:effect (and
		(not (monitor_77))
		(monitor_78)
		(increase (roughness) (+ (^ (- x1 473.352) 2) (^ (- x2 162.612) 2)))
	)
)

(:event validate_79
	:parameters ()
	:precondition (and
		(monitor_78)
		(<= 78.995 running_time) ; t_79 - 0.05
		(> 79.005 running_time) ; t_79 + 0.05
		(< (+ (^ (- x1 469.774) 2) (^ (- x2 139.892) 2)) (^ 10 2) ) ; \phi_79
	)
	:effect (and
		(not (monitor_78))
		(monitor_79)
		(increase (roughness) (+ (^ (- x1 469.774) 2) (^ (- x2 139.892) 2)))
	)
)

(:event validate_80
	:parameters ()
	:precondition (and
		(monitor_79)
		(<= 79.995 running_time) ; t_80 - 0.05
		(> 80.005 running_time) ; t_80 + 0.05
		(< (+ (^ (- x1 466.196) 2) (^ (- x2 117.172) 2)) (^ 10 2) ) ; \phi_80
	)
	:effect (and
		(not (monitor_79))
		(monitor_80)
		(increase (roughness) (+ (^ (- x1 466.196) 2) (^ (- x2 117.172) 2)))
	)
)

(:event validate_81
	:parameters ()
	:precondition (and
		(monitor_80)
		(<= 80.995 running_time) ; t_81 - 0.05
		(> 81.005 running_time) ; t_81 + 0.05
		(< (+ (^ (- x1 462.618) 2) (^ (- x2 94.452) 2)) (^ 10 2) ) ; \phi_81
	)
	:effect (and
		(not (monitor_80))
		(monitor_81)
		(increase (roughness) (+ (^ (- x1 462.618) 2) (^ (- x2 94.452) 2)))
	)
)

(:event validate_82
	:parameters ()
	:precondition (and
		(monitor_81)
		(<= 81.995 running_time) ; t_82 - 0.05
		(> 82.005 running_time) ; t_82 + 0.05
		(< (+ (^ (- x1 459.011) 2) (^ (- x2 71.737) 2)) (^ 10 2) ) ; \phi_82
	)
	:effect (and
		(not (monitor_81))
		(monitor_82)
		(increase (roughness) (+ (^ (- x1 459.011) 2) (^ (- x2 71.737) 2)))
	)
)

(:event validate_83
	:parameters ()
	:precondition (and
		(monitor_82)
		(<= 82.995 running_time) ; t_83 - 0.05
		(> 83.005 running_time) ; t_83 + 0.05
		(< (+ (^ (- x1 453.502) 2) (^ (- x2 49.475) 2)) (^ 10 2) ) ; \phi_83
	)
	:effect (and
		(not (monitor_82))
		(monitor_83)
		(increase (roughness) (+ (^ (- x1 453.502) 2) (^ (- x2 49.475) 2)))
	)
)

(:event validate_84
	:parameters ()
	:precondition (and
		(monitor_83)
		(<= 83.995 running_time) ; t_84 - 0.05
		(> 84.005 running_time) ; t_84 + 0.05
		(< (+ (^ (- x1 441.613) 2) (^ (- x2 29.897) 2)) (^ 10 2) ) ; \phi_84
	)
	:effect (and
		(not (monitor_83))
		(monitor_84)
		(increase (roughness) (+ (^ (- x1 441.613) 2) (^ (- x2 29.897) 2)))
	)
)

(:event validate_85
	:parameters ()
	:precondition (and
		(monitor_84)
		(<= 84.995 running_time) ; t_85 - 0.05
		(> 85.005 running_time) ; t_85 + 0.05
		(< (+ (^ (- x1 424.255) 2) (^ (- x2 14.951) 2)) (^ 10 2) ) ; \phi_85
	)
	:effect (and
		(not (monitor_84))
		(monitor_85)
		(increase (roughness) (+ (^ (- x1 424.255) 2) (^ (- x2 14.951) 2)))
	)
)

(:event validate_86
	:parameters ()
	:precondition (and
		(monitor_85)
		(<= 85.995 running_time) ; t_86 - 0.05
		(> 86.005 running_time) ; t_86 + 0.05
		(< (+ (^ (- x1 403.129) 2) (^ (- x2 6.101) 2)) (^ 10 2) ) ; \phi_86
	)
	:effect (and
		(not (monitor_85))
		(monitor_86)
		(increase (roughness) (+ (^ (- x1 403.129) 2) (^ (- x2 6.101) 2)))
	)
)

(:event validate_87
	:parameters ()
	:precondition (and
		(monitor_86)
		(<= 86.995 running_time) ; t_87 - 0.05
		(> 87.005 running_time) ; t_87 + 0.05
		(< (+ (^ (- x1 380.301) 2) (^ (- x2 4.212) 2)) (^ 10 2) ) ; \phi_87
	)
	:effect (and
		(not (monitor_86))
		(monitor_87)
		(increase (roughness) (+ (^ (- x1 380.301) 2) (^ (- x2 4.212) 2)))
	)
)

(:event validate_88
	:parameters ()
	:precondition (and
		(monitor_87)
		(<= 87.995 running_time) ; t_88 - 0.05
		(> 88.005 running_time) ; t_88 + 0.05
		(< (+ (^ (- x1 358.007) 2) (^ (- x2 9.469) 2)) (^ 10 2) ) ; \phi_88
	)
	:effect (and
		(not (monitor_87))
		(monitor_88)
		(increase (roughness) (+ (^ (- x1 358.007) 2) (^ (- x2 9.469) 2)))
	)
)

(:event validate_89
	:parameters ()
	:precondition (and
		(monitor_88)
		(<= 88.995 running_time) ; t_89 - 0.05
		(> 89.005 running_time) ; t_89 + 0.05
		(< (+ (^ (- x1 338.429) 2) (^ (- x2 21.359) 2)) (^ 10 2) ) ; \phi_89
	)
	:effect (and
		(not (monitor_88))
		(monitor_89)
		(increase (roughness) (+ (^ (- x1 338.429) 2) (^ (- x2 21.359) 2)))
	)
)

(:event validate_90
	:parameters ()
	:precondition (and
		(monitor_89)
		(<= 89.995 running_time) ; t_90 - 0.05
		(> 90.005 running_time) ; t_90 + 0.05
		(< (+ (^ (- x1 323.483) 2) (^ (- x2 38.716) 2)) (^ 10 2) ) ; \phi_90
	)
	:effect (and
		(not (monitor_89))
		(monitor_90)
		(increase (roughness) (+ (^ (- x1 323.483) 2) (^ (- x2 38.716) 2)))
	)
)

(:event validate_91
	:parameters ()
	:precondition (and
		(monitor_90)
		(<= 90.995 running_time) ; t_91 - 0.05
		(> 91.005 running_time) ; t_91 + 0.05
		(< (+ (^ (- x1 314.633) 2) (^ (- x2 59.843) 2)) (^ 10 2) ) ; \phi_91
	)
	:effect (and
		(not (monitor_90))
		(monitor_91)
		(increase (roughness) (+ (^ (- x1 314.633) 2) (^ (- x2 59.843) 2)))
	)
)

(:event validate_92
	:parameters ()
	:precondition (and
		(monitor_91)
		(<= 91.995 running_time) ; t_92 - 0.05
		(> 92.005 running_time) ; t_92 + 0.05
		(< (+ (^ (- x1 312.744) 2) (^ (- x2 82.67) 2)) (^ 10 2) ) ; \phi_92
	)
	:effect (and
		(not (monitor_91))
		(monitor_92)
		(increase (roughness) (+ (^ (- x1 312.744) 2) (^ (- x2 82.67) 2)))
	)
)

(:event validate_93
	:parameters ()
	:precondition (and
		(monitor_92)
		(<= 92.995 running_time) ; t_93 - 0.05
		(> 93.005 running_time) ; t_93 + 0.05
		(< (+ (^ (- x1 318.001) 2) (^ (- x2 104.964) 2)) (^ 10 2) ) ; \phi_93
	)
	:effect (and
		(not (monitor_92))
		(monitor_93)
		(increase (roughness) (+ (^ (- x1 318.001) 2) (^ (- x2 104.964) 2)))
	)
)

(:event validate_94
	:parameters ()
	:precondition (and
		(monitor_93)
		(<= 93.995 running_time) ; t_94 - 0.05
		(> 94.005 running_time) ; t_94 + 0.05
		(< (+ (^ (- x1 329.891) 2) (^ (- x2 124.543) 2)) (^ 10 2) ) ; \phi_94
	)
	:effect (and
		(not (monitor_93))
		(monitor_94)
		(increase (roughness) (+ (^ (- x1 329.891) 2) (^ (- x2 124.543) 2)))
	)
)

(:event validate_95
	:parameters ()
	:precondition (and
		(monitor_94)
		(<= 94.995 running_time) ; t_95 - 0.05
		(> 95.005 running_time) ; t_95 + 0.05
		(< (+ (^ (- x1 345.106) 2) (^ (- x2 141.79) 2)) (^ 10 2) ) ; \phi_95
	)
	:effect (and
		(not (monitor_94))
		(monitor_95)
		(increase (roughness) (+ (^ (- x1 345.106) 2) (^ (- x2 141.79) 2)))
	)
)

(:event validate_96
	:parameters ()
	:precondition (and
		(monitor_95)
		(<= 95.995 running_time) ; t_96 - 0.05
		(> 96.005 running_time) ; t_96 + 0.05
		(< (+ (^ (- x1 360.328) 2) (^ (- x2 159.032) 2)) (^ 10 2) ) ; \phi_96
	)
	:effect (and
		(not (monitor_95))
		(monitor_96)
		(increase (roughness) (+ (^ (- x1 360.328) 2) (^ (- x2 159.032) 2)))
	)
)

(:event validate_97
	:parameters ()
	:precondition (and
		(monitor_96)
		(<= 96.995 running_time) ; t_97 - 0.05
		(> 97.005 running_time) ; t_97 + 0.05
		(< (+ (^ (- x1 375.55) 2) (^ (- x2 176.274) 2)) (^ 10 2) ) ; \phi_97
	)
	:effect (and
		(not (monitor_96))
		(monitor_97)
		(increase (roughness) (+ (^ (- x1 375.55) 2) (^ (- x2 176.274) 2)))
	)
)

(:event validate_98
	:parameters ()
	:precondition (and
		(monitor_97)
		(<= 97.995 running_time) ; t_98 - 0.05
		(> 98.005 running_time) ; t_98 + 0.05
		(< (+ (^ (- x1 390.772) 2) (^ (- x2 193.516) 2)) (^ 10 2) ) ; \phi_98
	)
	:effect (and
		(not (monitor_97))
		(monitor_98)
		(increase (roughness) (+ (^ (- x1 390.772) 2) (^ (- x2 193.516) 2)))
	)
)

(:event validate_99
	:parameters ()
	:precondition (and
		(monitor_98)
		(<= 98.995 running_time) ; t_99 - 0.05
		(> 99.005 running_time) ; t_99 + 0.05
		(< (+ (^ (- x1 405.89) 2) (^ (- x2 210.847) 2)) (^ 10 2) ) ; \phi_99
	)
	:effect (and
		(not (monitor_98))
		(monitor_99)
		(increase (roughness) (+ (^ (- x1 405.89) 2) (^ (- x2 210.847) 2)))
	)
)

(:event validate_100
	:parameters ()
	:precondition (and
		(monitor_99)
		(<= 99.995 running_time) ; t_100 - 0.05
		(> 100.005 running_time) ; t_100 + 0.05
		(< (+ (^ (- x1 416.97) 2) (^ (- x2 230.894) 2)) (^ 10 2) ) ; \phi_100
	)
	:effect (and
		(not (monitor_99))
		(monitor_100)
		(increase (roughness) (+ (^ (- x1 416.97) 2) (^ (- x2 230.894) 2)))
	)
)

(:constraint roughness_bound
	:parameters ()
	:condition (and
		(< roughness max_roughness)
	)
)

)