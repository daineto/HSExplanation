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
		(< (+ (^ (- x1 21.129) 2) (^ (- x2 5.795) 2)) (^ 10 2) ) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
		(increase (roughness) (+ (^ (- x1 21.129) 2) (^ (- x2 5.795) 2)))
	)
)

(:event validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.995 running_time) ; t_2 - 0.05
		(> 2.005 running_time) ; t_2 + 0.05
		(< (+ (^ (- x1 39.434) 2) (^ (- x2 17.836) 2)) (^ 10 2) ) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
		(increase (roughness) (+ (^ (- x1 39.434) 2) (^ (- x2 17.836) 2)))
	)
)

(:event validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.995 running_time) ; t_3 - 0.05
		(> 3.005 running_time) ; t_3 + 0.05
		(< (+ (^ (- x1 53.122) 2) (^ (- x2 34.943) 2)) (^ 10 2) ) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
		(increase (roughness) (+ (^ (- x1 53.122) 2) (^ (- x2 34.943) 2)))
	)
)

(:event validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.995 running_time) ; t_4 - 0.05
		(> 4.005 running_time) ; t_4 + 0.05
		(< (+ (^ (- x1 60.853) 2) (^ (- x2 55.443) 2)) (^ 10 2) ) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
		(increase (roughness) (+ (^ (- x1 60.853) 2) (^ (- x2 55.443) 2)))
	)
)

(:event validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.995 running_time) ; t_5 - 0.05
		(> 5.005 running_time) ; t_5 + 0.05
		(< (+ (^ (- x1 61.871) 2) (^ (- x2 77.329) 2)) (^ 10 2) ) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
		(increase (roughness) (+ (^ (- x1 61.871) 2) (^ (- x2 77.329) 2)))
	)
)

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.995 running_time) ; t_6 - 0.05
		(> 6.005 running_time) ; t_6 + 0.05
		(< (+ (^ (- x1 56.076) 2) (^ (- x2 98.459) 2)) (^ 10 2) ) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
		(increase (roughness) (+ (^ (- x1 56.076) 2) (^ (- x2 98.459) 2)))
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.995 running_time) ; t_7 - 0.05
		(> 7.005 running_time) ; t_7 + 0.05
		(< (+ (^ (- x1 44.168) 2) (^ (- x2 116.873) 2)) (^ 10 2) ) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
		(increase (roughness) (+ (^ (- x1 44.168) 2) (^ (- x2 116.873) 2)))
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.995 running_time) ; t_8 - 0.05
		(> 8.005 running_time) ; t_8 + 0.05
		(< (+ (^ (- x1 30.353) 2) (^ (- x2 133.994) 2)) (^ 10 2) ) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
		(increase (roughness) (+ (^ (- x1 30.353) 2) (^ (- x2 133.994) 2)))
	)
)

(:event validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.995 running_time) ; t_9 - 0.05
		(> 9.005 running_time) ; t_9 + 0.05
		(< (+ (^ (- x1 16.201) 2) (^ (- x2 150.837) 2)) (^ 10 2) ) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
		(increase (roughness) (+ (^ (- x1 16.201) 2) (^ (- x2 150.837) 2)))
	)
)

(:event validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.995 running_time) ; t_10 - 0.05
		(> 10.005 running_time) ; t_10 + 0.05
		(< (+ (^ (- x1 2.639) 2) (^ (- x2 168.112) 2)) (^ 10 2) ) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
		(increase (roughness) (+ (^ (- x1 2.639) 2) (^ (- x2 168.112) 2)))
	)
)

(:event validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.995 running_time) ; t_11 - 0.05
		(> 11.005 running_time) ; t_11 + 0.05
		(< (+ (^ (- x1 -5.504) 2) (^ (- x2 188.452) 2)) (^ 10 2) ) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
		(increase (roughness) (+ (^ (- x1 -5.504) 2) (^ (- x2 188.452) 2)))
	)
)

(:event validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.995 running_time) ; t_12 - 0.05
		(> 12.005 running_time) ; t_12 + 0.05
		(< (+ (^ (- x1 -6.962) 2) (^ (- x2 210.313) 2)) (^ 10 2) ) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
		(increase (roughness) (+ (^ (- x1 -6.962) 2) (^ (- x2 210.313) 2)))
	)
)

(:event validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.995 running_time) ; t_13 - 0.05
		(> 13.005 running_time) ; t_13 + 0.05
		(< (+ (^ (- x1 -1.594) 2) (^ (- x2 231.555) 2)) (^ 10 2) ) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
		(increase (roughness) (+ (^ (- x1 -1.594) 2) (^ (- x2 231.555) 2)))
	)
)

(:event validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.995 running_time) ; t_14 - 0.05
		(> 14.005 running_time) ; t_14 + 0.05
		(< (+ (^ (- x1 10.076) 2) (^ (- x2 250.098) 2)) (^ 10 2) ) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
		(increase (roughness) (+ (^ (- x1 10.076) 2) (^ (- x2 250.098) 2)))
	)
)

(:event validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.995 running_time) ; t_15 - 0.05
		(> 15.005 running_time) ; t_15 + 0.05
		(< (+ (^ (- x1 26.905) 2) (^ (- x2 264.128) 2)) (^ 10 2) ) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
		(increase (roughness) (+ (^ (- x1 26.905) 2) (^ (- x2 264.128) 2)))
	)
)

(:event validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.995 running_time) ; t_16 - 0.05
		(> 16.005 running_time) ; t_16 + 0.05
		(< (+ (^ (- x1 47.245) 2) (^ (- x2 272.27) 2)) (^ 10 2) ) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
		(increase (roughness) (+ (^ (- x1 47.245) 2) (^ (- x2 272.27) 2)))
	)
)

(:event validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.995 running_time) ; t_17 - 0.05
		(> 17.005 running_time) ; t_17 + 0.05
		(< (+ (^ (- x1 69.106) 2) (^ (- x2 273.729) 2)) (^ 10 2) ) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
		(increase (roughness) (+ (^ (- x1 69.106) 2) (^ (- x2 273.729) 2)))
	)
)

(:event validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.995 running_time) ; t_18 - 0.05
		(> 18.005 running_time) ; t_18 + 0.05
		(< (+ (^ (- x1 90.348) 2) (^ (- x2 268.36) 2)) (^ 10 2) ) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
		(increase (roughness) (+ (^ (- x1 90.348) 2) (^ (- x2 268.36) 2)))
	)
)

(:event validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.995 running_time) ; t_19 - 0.05
		(> 19.005 running_time) ; t_19 + 0.05
		(< (+ (^ (- x1 108.891) 2) (^ (- x2 256.69) 2)) (^ 10 2) ) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
		(increase (roughness) (+ (^ (- x1 108.891) 2) (^ (- x2 256.69) 2)))
	)
)

(:event validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.995 running_time) ; t_20 - 0.05
		(> 20.005 running_time) ; t_20 + 0.05
		(< (+ (^ (- x1 123.389) 2) (^ (- x2 240.198) 2)) (^ 10 2) ) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
		(increase (roughness) (+ (^ (- x1 123.389) 2) (^ (- x2 240.198) 2)))
	)
)

(:event validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.995 running_time) ; t_21 - 0.05
		(> 21.005 running_time) ; t_21 + 0.05
		(< (+ (^ (- x1 137.631) 2) (^ (- x2 223.48) 2)) (^ 10 2) ) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
		(increase (roughness) (+ (^ (- x1 137.631) 2) (^ (- x2 223.48) 2)))
	)
)

(:event validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.995 running_time) ; t_22 - 0.05
		(> 22.005 running_time) ; t_22 + 0.05
		(< (+ (^ (- x1 155.951) 2) (^ (- x2 211.463) 2)) (^ 10 2) ) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
		(increase (roughness) (+ (^ (- x1 155.951) 2) (^ (- x2 211.463) 2)))
	)
)

(:event validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.995 running_time) ; t_23 - 0.05
		(> 23.005 running_time) ; t_23 + 0.05
		(< (+ (^ (- x1 177.087) 2) (^ (- x2 205.695) 2)) (^ 10 2) ) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
		(increase (roughness) (+ (^ (- x1 177.087) 2) (^ (- x2 205.695) 2)))
	)
)

(:event validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.995 running_time) ; t_24 - 0.05
		(> 24.005 running_time) ; t_24 + 0.05
		(< (+ (^ (- x1 198.972) 2) (^ (- x2 206.741) 2)) (^ 10 2) ) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
		(increase (roughness) (+ (^ (- x1 198.972) 2) (^ (- x2 206.741) 2)))
	)
)

(:event validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.995 running_time) ; t_25 - 0.05
		(> 25.005 running_time) ; t_25 + 0.05
		(< (+ (^ (- x1 219.462) 2) (^ (- x2 214.499) 2)) (^ 10 2) ) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
		(increase (roughness) (+ (^ (- x1 219.462) 2) (^ (- x2 214.499) 2)))
	)
)

(:event validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.995 running_time) ; t_26 - 0.05
		(> 26.005 running_time) ; t_26 + 0.05
		(< (+ (^ (- x1 236.553) 2) (^ (- x2 228.208) 2)) (^ 10 2) ) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
		(increase (roughness) (+ (^ (- x1 236.553) 2) (^ (- x2 228.208) 2)))
	)
)

(:event validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.995 running_time) ; t_27 - 0.05
		(> 27.005 running_time) ; t_27 + 0.05
		(< (+ (^ (- x1 248.57) 2) (^ (- x2 246.528) 2)) (^ 10 2) ) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
		(increase (roughness) (+ (^ (- x1 248.57) 2) (^ (- x2 246.528) 2)))
	)
)

(:event validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.995 running_time) ; t_28 - 0.05
		(> 28.005 running_time) ; t_28 + 0.05
		(< (+ (^ (- x1 254.372) 2) (^ (- x2 267.661) 2)) (^ 10 2) ) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
		(increase (roughness) (+ (^ (- x1 254.372) 2) (^ (- x2 267.661) 2)))
	)
)

(:event validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.995 running_time) ; t_29 - 0.05
		(> 29.005 running_time) ; t_29 + 0.05
		(< (+ (^ (- x1 256.658) 2) (^ (- x2 289.523) 2)) (^ 10 2) ) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
		(increase (roughness) (+ (^ (- x1 256.658) 2) (^ (- x2 289.523) 2)))
	)
)

(:event validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.995 running_time) ; t_30 - 0.05
		(> 30.005 running_time) ; t_30 + 0.05
		(< (+ (^ (- x1 253.217) 2) (^ (- x2 311.16) 2)) (^ 10 2) ) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
		(increase (roughness) (+ (^ (- x1 253.217) 2) (^ (- x2 311.16) 2)))
	)
)

(:event validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.995 running_time) ; t_31 - 0.05
		(> 31.005 running_time) ; t_31 + 0.05
		(< (+ (^ (- x1 243.258) 2) (^ (- x2 330.676) 2)) (^ 10 2) ) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
		(increase (roughness) (+ (^ (- x1 243.258) 2) (^ (- x2 330.676) 2)))
	)
)

(:event validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.995 running_time) ; t_32 - 0.05
		(> 32.005 running_time) ; t_32 + 0.05
		(< (+ (^ (- x1 227.755) 2) (^ (- x2 346.158) 2)) (^ 10 2) ) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
		(increase (roughness) (+ (^ (- x1 227.755) 2) (^ (- x2 346.158) 2)))
	)
)

(:event validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.995 running_time) ; t_33 - 0.05
		(> 33.005 running_time) ; t_33 + 0.05
		(< (+ (^ (- x1 208.227) 2) (^ (- x2 356.092) 2)) (^ 10 2) ) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
		(increase (roughness) (+ (^ (- x1 208.227) 2) (^ (- x2 356.092) 2)))
	)
)

(:event validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.995 running_time) ; t_34 - 0.05
		(> 34.005 running_time) ; t_34 + 0.05
		(< (+ (^ (- x1 186.585) 2) (^ (- x2 359.506) 2)) (^ 10 2) ) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
		(increase (roughness) (+ (^ (- x1 186.585) 2) (^ (- x2 359.506) 2)))
	)
)

(:event validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.995 running_time) ; t_35 - 0.05
		(> 35.005 running_time) ; t_35 + 0.05
		(< (+ (^ (- x1 164.947) 2) (^ (- x2 356.065) 2)) (^ 10 2) ) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
		(increase (roughness) (+ (^ (- x1 164.947) 2) (^ (- x2 356.065) 2)))
	)
)

(:event validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.995 running_time) ; t_36 - 0.05
		(> 36.005 running_time) ; t_36 + 0.05
		(< (+ (^ (- x1 145.432) 2) (^ (- x2 346.105) 2)) (^ 10 2) ) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
		(increase (roughness) (+ (^ (- x1 145.432) 2) (^ (- x2 346.105) 2)))
	)
)

(:event validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.995 running_time) ; t_37 - 0.05
		(> 37.005 running_time) ; t_37 + 0.05
		(< (+ (^ (- x1 128.927) 2) (^ (- x2 331.579) 2)) (^ 10 2) ) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
		(increase (roughness) (+ (^ (- x1 128.927) 2) (^ (- x2 331.579) 2)))
	)
)

(:event validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.995 running_time) ; t_38 - 0.05
		(> 38.005 running_time) ; t_38 + 0.05
		(< (+ (^ (- x1 112.711) 2) (^ (- x2 316.711) 2)) (^ 10 2) ) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
		(increase (roughness) (+ (^ (- x1 112.711) 2) (^ (- x2 316.711) 2)))
	)
)

(:event validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.995 running_time) ; t_39 - 0.05
		(> 39.005 running_time) ; t_39 + 0.05
		(< (+ (^ (- x1 96.495) 2) (^ (- x2 301.843) 2)) (^ 10 2) ) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
		(increase (roughness) (+ (^ (- x1 96.495) 2) (^ (- x2 301.843) 2)))
	)
)

(:event validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.995 running_time) ; t_40 - 0.05
		(> 40.005 running_time) ; t_40 + 0.05
		(< (+ (^ (- x1 79.751) 2) (^ (- x2 287.615) 2)) (^ 10 2) ) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
		(increase (roughness) (+ (^ (- x1 79.751) 2) (^ (- x2 287.615) 2)))
	)
)

(:event validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.995 running_time) ; t_41 - 0.05
		(> 41.005 running_time) ; t_41 + 0.05
		(< (+ (^ (- x1 59.846) 2) (^ (- x2 278.46) 2)) (^ 10 2) ) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
		(increase (roughness) (+ (^ (- x1 59.846) 2) (^ (- x2 278.46) 2)))
	)
)

(:event validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.995 running_time) ; t_42 - 0.05
		(> 42.005 running_time) ; t_42 + 0.05
		(< (+ (^ (- x1 38.085) 2) (^ (- x2 275.905) 2)) (^ 10 2) ) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
		(increase (roughness) (+ (^ (- x1 38.085) 2) (^ (- x2 275.905) 2)))
	)
)

(:event validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.995 running_time) ; t_43 - 0.05
		(> 43.005 running_time) ; t_43 + 0.05
		(< (+ (^ (- x1 16.601) 2) (^ (- x2 280.2) 2)) (^ 10 2) ) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
		(increase (roughness) (+ (^ (- x1 16.601) 2) (^ (- x2 280.2) 2)))
	)
)

(:event validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.995 running_time) ; t_44 - 0.05
		(> 44.005 running_time) ; t_44 + 0.05
		(< (+ (^ (- x1 -2.505) 2) (^ (- x2 290.923) 2)) (^ 10 2) ) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
		(increase (roughness) (+ (^ (- x1 -2.505) 2) (^ (- x2 290.923) 2)))
	)
)

(:event validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.995 running_time) ; t_45 - 0.05
		(> 45.005 running_time) ; t_45 + 0.05
		(< (+ (^ (- x1 -17.363) 2) (^ (- x2 307.026) 2)) (^ 10 2) ) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
		(increase (roughness) (+ (^ (- x1 -17.363) 2) (^ (- x2 307.026) 2)))
	)
)

(:event validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.995 running_time) ; t_46 - 0.05
		(> 46.005 running_time) ; t_46 + 0.05
		(< (+ (^ (- x1 -26.517) 2) (^ (- x2 326.931) 2)) (^ 10 2) ) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
		(increase (roughness) (+ (^ (- x1 -26.517) 2) (^ (- x2 326.931) 2)))
	)
)

(:event validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.995 running_time) ; t_47 - 0.05
		(> 47.005 running_time) ; t_47 + 0.05
		(< (+ (^ (- x1 -29.072) 2) (^ (- x2 348.691) 2)) (^ 10 2) ) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
		(increase (roughness) (+ (^ (- x1 -29.072) 2) (^ (- x2 348.691) 2)))
	)
)

(:event validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.995 running_time) ; t_48 - 0.05
		(> 48.005 running_time) ; t_48 + 0.05
		(< (+ (^ (- x1 -24.777) 2) (^ (- x2 370.176) 2)) (^ 10 2) ) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
		(increase (roughness) (+ (^ (- x1 -24.777) 2) (^ (- x2 370.176) 2)))
	)
)

(:event validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.995 running_time) ; t_49 - 0.05
		(> 49.005 running_time) ; t_49 + 0.05
		(< (+ (^ (- x1 -14.054) 2) (^ (- x2 389.282) 2)) (^ 10 2) ) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
		(increase (roughness) (+ (^ (- x1 -14.054) 2) (^ (- x2 389.282) 2)))
	)
)

(:event validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.995 running_time) ; t_50 - 0.05
		(> 50.005 running_time) ; t_50 + 0.05
		(< (+ (^ (- x1 2.047) 2) (^ (- x2 404.141) 2)) (^ 10 2) ) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
		(increase (roughness) (+ (^ (- x1 2.047) 2) (^ (- x2 404.141) 2)))
	)
)

(:event validate_51
	:parameters ()
	:precondition (and
		(monitor_50)
		(<= 50.995 running_time) ; t_51 - 0.05
		(> 51.005 running_time) ; t_51 + 0.05
		(< (+ (^ (- x1 20.342) 2) (^ (- x2 416.36) 2)) (^ 10 2) ) ; \phi_51
	)
	:effect (and
		(not (monitor_50))
		(monitor_51)
		(increase (roughness) (+ (^ (- x1 20.342) 2) (^ (- x2 416.36) 2)))
	)
)

(:event validate_52
	:parameters ()
	:precondition (and
		(monitor_51)
		(<= 51.995 running_time) ; t_52 - 0.05
		(> 52.005 running_time) ; t_52 + 0.05
		(< (+ (^ (- x1 38.805) 2) (^ (- x2 428.322) 2)) (^ 10 2) ) ; \phi_52
	)
	:effect (and
		(not (monitor_51))
		(monitor_52)
		(increase (roughness) (+ (^ (- x1 38.805) 2) (^ (- x2 428.322) 2)))
	)
)

(:event validate_53
	:parameters ()
	:precondition (and
		(monitor_52)
		(<= 52.995 running_time) ; t_53 - 0.05
		(> 53.005 running_time) ; t_53 + 0.05
		(< (+ (^ (- x1 57.463) 2) (^ (- x2 439.978) 2)) (^ 10 2) ) ; \phi_53
	)
	:effect (and
		(not (monitor_52))
		(monitor_53)
		(increase (roughness) (+ (^ (- x1 57.463) 2) (^ (- x2 439.978) 2)))
	)
)

(:event validate_54
	:parameters ()
	:precondition (and
		(monitor_53)
		(<= 53.995 running_time) ; t_54 - 0.05
		(> 54.005 running_time) ; t_54 + 0.05
		(< (+ (^ (- x1 76.357) 2) (^ (- x2 451.248) 2)) (^ 10 2) ) ; \phi_54
	)
	:effect (and
		(not (monitor_53))
		(monitor_54)
		(increase (roughness) (+ (^ (- x1 76.357) 2) (^ (- x2 451.248) 2)))
	)
)

(:event validate_55
	:parameters ()
	:precondition (and
		(monitor_54)
		(<= 54.995 running_time) ; t_55 - 0.05
		(> 55.005 running_time) ; t_55 + 0.05
		(< (+ (^ (- x1 94.39) 2) (^ (- x2 463.738) 2)) (^ 10 2) ) ; \phi_55
	)
	:effect (and
		(not (monitor_54))
		(monitor_55)
		(increase (roughness) (+ (^ (- x1 94.39) 2) (^ (- x2 463.738) 2)))
	)
)

(:event validate_56
	:parameters ()
	:precondition (and
		(monitor_55)
		(<= 55.995 running_time) ; t_56 - 0.05
		(> 56.005 running_time) ; t_56 + 0.05
		(< (+ (^ (- x1 107.862) 2) (^ (- x2 481.017) 2)) (^ 10 2) ) ; \phi_56
	)
	:effect (and
		(not (monitor_55))
		(monitor_56)
		(increase (roughness) (+ (^ (- x1 107.862) 2) (^ (- x2 481.017) 2)))
	)
)

(:event validate_57
	:parameters ()
	:precondition (and
		(monitor_56)
		(<= 56.995 running_time) ; t_57 - 0.05
		(> 57.005 running_time) ; t_57 + 0.05
		(< (+ (^ (- x1 115.335) 2) (^ (- x2 501.613) 2)) (^ 10 2) ) ; \phi_57
	)
	:effect (and
		(not (monitor_56))
		(monitor_57)
		(increase (roughness) (+ (^ (- x1 115.335) 2) (^ (- x2 501.613) 2)))
	)
)

(:event validate_58
	:parameters ()
	:precondition (and
		(monitor_57)
		(<= 57.995 running_time) ; t_58 - 0.05
		(> 58.005 running_time) ; t_58 + 0.05
		(< (+ (^ (- x1 116.078) 2) (^ (- x2 523.51) 2)) (^ 10 2) ) ; \phi_58
	)
	:effect (and
		(not (monitor_57))
		(monitor_58)
		(increase (roughness) (+ (^ (- x1 116.078) 2) (^ (- x2 523.51) 2)))
	)
)

(:event validate_59
	:parameters ()
	:precondition (and
		(monitor_58)
		(<= 58.995 running_time) ; t_59 - 0.05
		(> 59.005 running_time) ; t_59 + 0.05
		(< (+ (^ (- x1 110.018) 2) (^ (- x2 544.564) 2)) (^ 10 2) ) ; \phi_59
	)
	:effect (and
		(not (monitor_58))
		(monitor_59)
		(increase (roughness) (+ (^ (- x1 110.018) 2) (^ (- x2 544.564) 2)))
	)
)

(:event validate_60
	:parameters ()
	:precondition (and
		(monitor_59)
		(<= 59.995 running_time) ; t_60 - 0.05
		(> 60.005 running_time) ; t_60 + 0.05
		(< (+ (^ (- x1 100.338) 2) (^ (- x2 564.32) 2)) (^ 10 2) ) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
		(increase (roughness) (+ (^ (- x1 100.338) 2) (^ (- x2 564.32) 2)))
	)
)

(:event validate_61
	:parameters ()
	:precondition (and
		(monitor_60)
		(<= 60.995 running_time) ; t_61 - 0.05
		(> 61.005 running_time) ; t_61 + 0.05
		(< (+ (^ (- x1 90.411) 2) (^ (- x2 583.953) 2)) (^ 10 2) ) ; \phi_61
	)
	:effect (and
		(not (monitor_60))
		(monitor_61)
		(increase (roughness) (+ (^ (- x1 90.411) 2) (^ (- x2 583.953) 2)))
	)
)

(:event validate_62
	:parameters ()
	:precondition (and
		(monitor_61)
		(<= 61.995 running_time) ; t_62 - 0.05
		(> 62.005 running_time) ; t_62 + 0.05
		(< (+ (^ (- x1 80.2) 2) (^ (- x2 603.439) 2)) (^ 10 2) ) ; \phi_62
	)
	:effect (and
		(not (monitor_61))
		(monitor_62)
		(increase (roughness) (+ (^ (- x1 80.2) 2) (^ (- x2 603.439) 2)))
	)
)

(:event validate_63
	:parameters ()
	:precondition (and
		(monitor_62)
		(<= 62.995 running_time) ; t_63 - 0.05
		(> 63.005 running_time) ; t_63 + 0.05
		(< (+ (^ (- x1 69.651) 2) (^ (- x2 622.745) 2)) (^ 10 2) ) ; \phi_63
	)
	:effect (and
		(not (monitor_62))
		(monitor_63)
		(increase (roughness) (+ (^ (- x1 69.651) 2) (^ (- x2 622.745) 2)))
	)
)

(:event validate_64
	:parameters ()
	:precondition (and
		(monitor_63)
		(<= 63.995 running_time) ; t_64 - 0.05
		(> 64.005 running_time) ; t_64 + 0.05
		(< (+ (^ (- x1 58.683) 2) (^ (- x2 641.815) 2)) (^ 10 2) ) ; \phi_64
	)
	:effect (and
		(not (monitor_63))
		(monitor_64)
		(increase (roughness) (+ (^ (- x1 58.683) 2) (^ (- x2 641.815) 2)))
	)
)

(:event validate_65
	:parameters ()
	:precondition (and
		(monitor_64)
		(<= 64.995 running_time) ; t_65 - 0.05
		(> 65.005 running_time) ; t_65 + 0.05
		(< (+ (^ (- x1 50.477) 2) (^ (- x2 662.13) 2)) (^ 10 2) ) ; \phi_65
	)
	:effect (and
		(not (monitor_64))
		(monitor_65)
		(increase (roughness) (+ (^ (- x1 50.477) 2) (^ (- x2 662.13) 2)))
	)
)

(:event validate_66
	:parameters ()
	:precondition (and
		(monitor_65)
		(<= 65.995 running_time) ; t_66 - 0.05
		(> 66.005 running_time) ; t_66 + 0.05
		(< (+ (^ (- x1 48.95) 2) (^ (- x2 683.987) 2)) (^ 10 2) ) ; \phi_66
	)
	:effect (and
		(not (monitor_65))
		(monitor_66)
		(increase (roughness) (+ (^ (- x1 48.95) 2) (^ (- x2 683.987) 2)))
	)
)

(:event validate_67
	:parameters ()
	:precondition (and
		(monitor_66)
		(<= 66.995 running_time) ; t_67 - 0.05
		(> 67.005 running_time) ; t_67 + 0.05
		(< (+ (^ (- x1 54.252) 2) (^ (- x2 705.245) 2)) (^ 10 2) ) ; \phi_67
	)
	:effect (and
		(not (monitor_66))
		(monitor_67)
		(increase (roughness) (+ (^ (- x1 54.252) 2) (^ (- x2 705.245) 2)))
	)
)

(:event validate_68
	:parameters ()
	:precondition (and
		(monitor_67)
		(<= 67.995 running_time) ; t_68 - 0.05
		(> 68.005 running_time) ; t_68 + 0.05
		(< (+ (^ (- x1 65.863) 2) (^ (- x2 723.825) 2)) (^ 10 2) ) ; \phi_68
	)
	:effect (and
		(not (monitor_67))
		(monitor_68)
		(increase (roughness) (+ (^ (- x1 65.863) 2) (^ (- x2 723.825) 2)))
	)
)

(:event validate_69
	:parameters ()
	:precondition (and
		(monitor_68)
		(<= 68.995 running_time) ; t_69 - 0.05
		(> 69.005 running_time) ; t_69 + 0.05
		(< (+ (^ (- x1 82.648) 2) (^ (- x2 737.907) 2)) (^ 10 2) ) ; \phi_69
	)
	:effect (and
		(not (monitor_68))
		(monitor_69)
		(increase (roughness) (+ (^ (- x1 82.648) 2) (^ (- x2 737.907) 2)))
	)
)

(:event validate_70
	:parameters ()
	:precondition (and
		(monitor_69)
		(<= 69.995 running_time) ; t_70 - 0.05
		(> 70.005 running_time) ; t_70 + 0.05
		(< (+ (^ (- x1 102.962) 2) (^ (- x2 746.114) 2)) (^ 10 2) ) ; \phi_70
	)
	:effect (and
		(not (monitor_69))
		(monitor_70)
		(increase (roughness) (+ (^ (- x1 102.962) 2) (^ (- x2 746.114) 2)))
	)
)

(:event validate_71
	:parameters ()
	:precondition (and
		(monitor_70)
		(<= 70.995 running_time) ; t_71 - 0.05
		(> 71.005 running_time) ; t_71 + 0.05
		(< (+ (^ (- x1 124.819) 2) (^ (- x2 747.641) 2)) (^ 10 2) ) ; \phi_71
	)
	:effect (and
		(not (monitor_70))
		(monitor_71)
		(increase (roughness) (+ (^ (- x1 124.819) 2) (^ (- x2 747.641) 2)))
	)
)

(:event validate_72
	:parameters ()
	:precondition (and
		(monitor_71)
		(<= 71.995 running_time) ; t_72 - 0.05
		(> 72.005 running_time) ; t_72 + 0.05
		(< (+ (^ (- x1 146.077) 2) (^ (- x2 742.339) 2)) (^ 10 2) ) ; \phi_72
	)
	:effect (and
		(not (monitor_71))
		(monitor_72)
		(increase (roughness) (+ (^ (- x1 146.077) 2) (^ (- x2 742.339) 2)))
	)
)

(:event validate_73
	:parameters ()
	:precondition (and
		(monitor_72)
		(<= 72.995 running_time) ; t_73 - 0.05
		(> 73.005 running_time) ; t_73 + 0.05
		(< (+ (^ (- x1 164.657) 2) (^ (- x2 730.728) 2)) (^ 10 2) ) ; \phi_73
	)
	:effect (and
		(not (monitor_72))
		(monitor_73)
		(increase (roughness) (+ (^ (- x1 164.657) 2) (^ (- x2 730.728) 2)))
	)
)

(:event validate_74
	:parameters ()
	:precondition (and
		(monitor_73)
		(<= 73.995 running_time) ; t_74 - 0.05
		(> 74.005 running_time) ; t_74 + 0.05
		(< (+ (^ (- x1 178.739) 2) (^ (- x2 713.943) 2)) (^ 10 2) ) ; \phi_74
	)
	:effect (and
		(not (monitor_73))
		(monitor_74)
		(increase (roughness) (+ (^ (- x1 178.739) 2) (^ (- x2 713.943) 2)))
	)
)

(:event validate_75
	:parameters ()
	:precondition (and
		(monitor_74)
		(<= 74.995 running_time) ; t_75 - 0.05
		(> 75.005 running_time) ; t_75 + 0.05
		(< (+ (^ (- x1 186.96) 2) (^ (- x2 693.632) 2)) (^ 10 2) ) ; \phi_75
	)
	:effect (and
		(not (monitor_74))
		(monitor_75)
		(increase (roughness) (+ (^ (- x1 186.96) 2) (^ (- x2 693.632) 2)))
	)
)

(:event validate_76
	:parameters ()
	:precondition (and
		(monitor_75)
		(<= 75.995 running_time) ; t_76 - 0.05
		(> 76.005 running_time) ; t_76 + 0.05
		(< (+ (^ (- x1 192.083) 2) (^ (- x2 672.237) 2)) (^ 10 2) ) ; \phi_76
	)
	:effect (and
		(not (monitor_75))
		(monitor_76)
		(increase (roughness) (+ (^ (- x1 192.083) 2) (^ (- x2 672.237) 2)))
	)
)

(:event validate_77
	:parameters ()
	:precondition (and
		(monitor_76)
		(<= 76.995 running_time) ; t_77 - 0.05
		(> 77.005 running_time) ; t_77 + 0.05
		(< (+ (^ (- x1 199.055) 2) (^ (- x2 651.435) 2)) (^ 10 2) ) ; \phi_77
	)
	:effect (and
		(not (monitor_76))
		(monitor_77)
		(increase (roughness) (+ (^ (- x1 199.055) 2) (^ (- x2 651.435) 2)))
	)
)

(:event validate_78
	:parameters ()
	:precondition (and
		(monitor_77)
		(<= 77.995 running_time) ; t_78 - 0.05
		(> 78.005 running_time) ; t_78 + 0.05
		(< (+ (^ (- x1 207.975) 2) (^ (- x2 631.324) 2)) (^ 10 2) ) ; \phi_78
	)
	:effect (and
		(not (monitor_77))
		(monitor_78)
		(increase (roughness) (+ (^ (- x1 207.975) 2) (^ (- x2 631.324) 2)))
	)
)

(:event validate_79
	:parameters ()
	:precondition (and
		(monitor_78)
		(<= 78.995 running_time) ; t_79 - 0.05
		(> 79.005 running_time) ; t_79 + 0.05
		(< (+ (^ (- x1 217.059) 2) (^ (- x2 611.287) 2)) (^ 10 2) ) ; \phi_79
	)
	:effect (and
		(not (monitor_78))
		(monitor_79)
		(increase (roughness) (+ (^ (- x1 217.059) 2) (^ (- x2 611.287) 2)))
	)
)

(:event validate_80
	:parameters ()
	:precondition (and
		(monitor_79)
		(<= 79.995 running_time) ; t_80 - 0.05
		(> 80.005 running_time) ; t_80 + 0.05
		(< (+ (^ (- x1 226.316) 2) (^ (- x2 591.33) 2)) (^ 10 2) ) ; \phi_80
	)
	:effect (and
		(not (monitor_79))
		(monitor_80)
		(increase (roughness) (+ (^ (- x1 226.316) 2) (^ (- x2 591.33) 2)))
	)
)

(:event validate_81
	:parameters ()
	:precondition (and
		(monitor_80)
		(<= 80.995 running_time) ; t_81 - 0.05
		(> 81.005 running_time) ; t_81 + 0.05
		(< (+ (^ (- x1 235.765) 2) (^ (- x2 571.462) 2)) (^ 10 2) ) ; \phi_81
	)
	:effect (and
		(not (monitor_80))
		(monitor_81)
		(increase (roughness) (+ (^ (- x1 235.765) 2) (^ (- x2 571.462) 2)))
	)
)

(:event validate_82
	:parameters ()
	:precondition (and
		(monitor_81)
		(<= 81.995 running_time) ; t_82 - 0.05
		(> 82.005 running_time) ; t_82 + 0.05
		(< (+ (^ (- x1 245.434) 2) (^ (- x2 551.701) 2)) (^ 10 2) ) ; \phi_82
	)
	:effect (and
		(not (monitor_81))
		(monitor_82)
		(increase (roughness) (+ (^ (- x1 245.434) 2) (^ (- x2 551.701) 2)))
	)
)

(:event validate_83
	:parameters ()
	:precondition (and
		(monitor_82)
		(<= 82.995 running_time) ; t_83 - 0.05
		(> 83.005 running_time) ; t_83 + 0.05
		(< (+ (^ (- x1 255.349) 2) (^ (- x2 532.063) 2)) (^ 10 2) ) ; \phi_83
	)
	:effect (and
		(not (monitor_82))
		(monitor_83)
		(increase (roughness) (+ (^ (- x1 255.349) 2) (^ (- x2 532.063) 2)))
	)
)

(:event validate_84
	:parameters ()
	:precondition (and
		(monitor_83)
		(<= 83.995 running_time) ; t_84 - 0.05
		(> 84.005 running_time) ; t_84 + 0.05
		(< (+ (^ (- x1 265.555) 2) (^ (- x2 512.573) 2)) (^ 10 2) ) ; \phi_84
	)
	:effect (and
		(not (monitor_83))
		(monitor_84)
		(increase (roughness) (+ (^ (- x1 265.555) 2) (^ (- x2 512.573) 2)))
	)
)

(:event validate_85
	:parameters ()
	:precondition (and
		(monitor_84)
		(<= 84.995 running_time) ; t_85 - 0.05
		(> 85.005 running_time) ; t_85 + 0.05
		(< (+ (^ (- x1 276.109) 2) (^ (- x2 493.271) 2)) (^ 10 2) ) ; \phi_85
	)
	:effect (and
		(not (monitor_84))
		(monitor_85)
		(increase (roughness) (+ (^ (- x1 276.109) 2) (^ (- x2 493.271) 2)))
	)
)

(:event validate_86
	:parameters ()
	:precondition (and
		(monitor_85)
		(<= 85.995 running_time) ; t_86 - 0.05
		(> 86.005 running_time) ; t_86 + 0.05
		(< (+ (^ (- x1 287.053) 2) (^ (- x2 474.186) 2)) (^ 10 2) ) ; \phi_86
	)
	:effect (and
		(not (monitor_85))
		(monitor_86)
		(increase (roughness) (+ (^ (- x1 287.053) 2) (^ (- x2 474.186) 2)))
	)
)

(:event validate_87
	:parameters ()
	:precondition (and
		(monitor_86)
		(<= 86.995 running_time) ; t_87 - 0.05
		(> 87.005 running_time) ; t_87 + 0.05
		(< (+ (^ (- x1 294.358) 2) (^ (- x2 453.53) 2)) (^ 10 2) ) ; \phi_87
	)
	:effect (and
		(not (monitor_86))
		(monitor_87)
		(increase (roughness) (+ (^ (- x1 294.358) 2) (^ (- x2 453.53) 2)))
	)
)

(:event validate_88
	:parameters ()
	:precondition (and
		(monitor_87)
		(<= 87.995 running_time) ; t_88 - 0.05
		(> 88.005 running_time) ; t_88 + 0.05
		(< (+ (^ (- x1 296.078) 2) (^ (- x2 431.616) 2)) (^ 10 2) ) ; \phi_88
	)
	:effect (and
		(not (monitor_87))
		(monitor_88)
		(increase (roughness) (+ (^ (- x1 296.078) 2) (^ (- x2 431.616) 2)))
	)
)

(:event validate_89
	:parameters ()
	:precondition (and
		(monitor_88)
		(<= 88.995 running_time) ; t_89 - 0.05
		(> 89.005 running_time) ; t_89 + 0.05
		(< (+ (^ (- x1 297.052) 2) (^ (- x2 409.638) 2)) (^ 10 2) ) ; \phi_89
	)
	:effect (and
		(not (monitor_88))
		(monitor_89)
		(increase (roughness) (+ (^ (- x1 297.052) 2) (^ (- x2 409.638) 2)))
	)
)

(:event validate_90
	:parameters ()
	:precondition (and
		(monitor_89)
		(<= 89.995 running_time) ; t_90 - 0.05
		(> 90.005 running_time) ; t_90 + 0.05
		(< (+ (^ (- x1 297.854) 2) (^ (- x2 387.653) 2)) (^ 10 2) ) ; \phi_90
	)
	:effect (and
		(not (monitor_89))
		(monitor_90)
		(increase (roughness) (+ (^ (- x1 297.854) 2) (^ (- x2 387.653) 2)))
	)
)

(:event validate_91
	:parameters ()
	:precondition (and
		(monitor_90)
		(<= 90.995 running_time) ; t_91 - 0.05
		(> 91.005 running_time) ; t_91 + 0.05
		(< (+ (^ (- x1 298.458) 2) (^ (- x2 365.661) 2)) (^ 10 2) ) ; \phi_91
	)
	:effect (and
		(not (monitor_90))
		(monitor_91)
		(increase (roughness) (+ (^ (- x1 298.458) 2) (^ (- x2 365.661) 2)))
	)
)

(:event validate_92
	:parameters ()
	:precondition (and
		(monitor_91)
		(<= 91.995 running_time) ; t_92 - 0.05
		(> 92.005 running_time) ; t_92 + 0.05
		(< (+ (^ (- x1 298.842) 2) (^ (- x2 343.665) 2)) (^ 10 2) ) ; \phi_92
	)
	:effect (and
		(not (monitor_91))
		(monitor_92)
		(increase (roughness) (+ (^ (- x1 298.842) 2) (^ (- x2 343.665) 2)))
	)
)

(:event validate_93
	:parameters ()
	:precondition (and
		(monitor_92)
		(<= 92.995 running_time) ; t_93 - 0.05
		(> 93.005 running_time) ; t_93 + 0.05
		(< (+ (^ (- x1 298.984) 2) (^ (- x2 321.665) 2)) (^ 10 2) ) ; \phi_93
	)
	:effect (and
		(not (monitor_92))
		(monitor_93)
		(increase (roughness) (+ (^ (- x1 298.984) 2) (^ (- x2 321.665) 2)))
	)
)

(:event validate_94
	:parameters ()
	:precondition (and
		(monitor_93)
		(<= 93.995 running_time) ; t_94 - 0.05
		(> 94.005 running_time) ; t_94 + 0.05
		(< (+ (^ (- x1 298.84) 2) (^ (- x2 299.666) 2)) (^ 10 2) ) ; \phi_94
	)
	:effect (and
		(not (monitor_93))
		(monitor_94)
		(increase (roughness) (+ (^ (- x1 298.84) 2) (^ (- x2 299.666) 2)))
	)
)

(:event validate_95
	:parameters ()
	:precondition (and
		(monitor_94)
		(<= 94.995 running_time) ; t_95 - 0.05
		(> 95.005 running_time) ; t_95 + 0.05
		(< (+ (^ (- x1 298.366) 2) (^ (- x2 277.671) 2)) (^ 10 2) ) ; \phi_95
	)
	:effect (and
		(not (monitor_94))
		(monitor_95)
		(increase (roughness) (+ (^ (- x1 298.366) 2) (^ (- x2 277.671) 2)))
	)
)

(:event validate_96
	:parameters ()
	:precondition (and
		(monitor_95)
		(<= 95.995 running_time) ; t_96 - 0.05
		(> 96.005 running_time) ; t_96 + 0.05
		(< (+ (^ (- x1 297.484) 2) (^ (- x2 255.689) 2)) (^ 10 2) ) ; \phi_96
	)
	:effect (and
		(not (monitor_95))
		(monitor_96)
		(increase (roughness) (+ (^ (- x1 297.484) 2) (^ (- x2 255.689) 2)))
	)
)

(:event validate_97
	:parameters ()
	:precondition (and
		(monitor_96)
		(<= 96.995 running_time) ; t_97 - 0.05
		(> 97.005 running_time) ; t_97 + 0.05
		(< (+ (^ (- x1 295.885) 2) (^ (- x2 233.754) 2)) (^ 10 2) ) ; \phi_97
	)
	:effect (and
		(not (monitor_96))
		(monitor_97)
		(increase (roughness) (+ (^ (- x1 295.885) 2) (^ (- x2 233.754) 2)))
	)
)

(:event validate_98
	:parameters ()
	:precondition (and
		(monitor_97)
		(<= 97.995 running_time) ; t_98 - 0.05
		(> 98.005 running_time) ; t_98 + 0.05
		(< (+ (^ (- x1 289.259) 2) (^ (- x2 212.871) 2)) (^ 10 2) ) ; \phi_98
	)
	:effect (and
		(not (monitor_97))
		(monitor_98)
		(increase (roughness) (+ (^ (- x1 289.259) 2) (^ (- x2 212.871) 2)))
	)
)

(:event validate_99
	:parameters ()
	:precondition (and
		(monitor_98)
		(<= 98.995 running_time) ; t_99 - 0.05
		(> 99.005 running_time) ; t_99 + 0.05
		(< (+ (^ (- x1 276.504) 2) (^ (- x2 195.057) 2)) (^ 10 2) ) ; \phi_99
	)
	:effect (and
		(not (monitor_98))
		(monitor_99)
		(increase (roughness) (+ (^ (- x1 276.504) 2) (^ (- x2 195.057) 2)))
	)
)

(:event validate_100
	:parameters ()
	:precondition (and
		(monitor_99)
		(<= 99.995 running_time) ; t_100 - 0.05
		(> 100.005 running_time) ; t_100 + 0.05
		(< (+ (^ (- x1 258.868) 2) (^ (- x2 182.056) 2)) (^ 10 2) ) ; \phi_100
	)
	:effect (and
		(not (monitor_99))
		(monitor_100)
		(increase (roughness) (+ (^ (- x1 258.868) 2) (^ (- x2 182.056) 2)))
	)
)

(:constraint roughness_bound
	:parameters ()
	:condition (and
		(< roughness max_roughness)
	)
)

)