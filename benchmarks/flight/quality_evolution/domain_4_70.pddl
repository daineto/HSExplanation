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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:event validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.995 running_time) ; t_1 - 0.05
		(> 1.005 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 21.347) 2) (^ (- x2 10.751) 2)) (^ 10 2) ) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
		(increase (roughness) (+ (^ (- x1 21.347) 2) (^ (- x2 10.751) 2)))
	)
)

(:event validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.995 running_time) ; t_2 - 0.05
		(> 2.005 running_time) ; t_2 + 0.05
		(< (+ (^ (- x1 38.328) 2) (^ (- x2 27.572) 2)) (^ 10 2) ) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
		(increase (roughness) (+ (^ (- x1 38.328) 2) (^ (- x2 27.572) 2)))
	)
)

(:event validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.995 running_time) ; t_3 - 0.05
		(> 3.005 running_time) ; t_3 + 0.05
		(< (+ (^ (- x1 49.279) 2) (^ (- x2 48.817) 2)) (^ 10 2) ) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
		(increase (roughness) (+ (^ (- x1 49.279) 2) (^ (- x2 48.817) 2)))
	)
)

(:event validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.995 running_time) ; t_4 - 0.05
		(> 4.005 running_time) ; t_4 + 0.05
		(< (+ (^ (- x1 54.464) 2) (^ (- x2 72.231) 2)) (^ 10 2) ) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
		(increase (roughness) (+ (^ (- x1 54.464) 2) (^ (- x2 72.231) 2)))
	)
)

(:event validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.995 running_time) ; t_5 - 0.05
		(> 5.005 running_time) ; t_5 + 0.05
		(< (+ (^ (- x1 58.763) 2) (^ (- x2 95.843) 2)) (^ 10 2) ) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
		(increase (roughness) (+ (^ (- x1 58.763) 2) (^ (- x2 95.843) 2)))
	)
)

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.995 running_time) ; t_6 - 0.05
		(> 6.005 running_time) ; t_6 + 0.05
		(< (+ (^ (- x1 62.617) 2) (^ (- x2 119.531) 2)) (^ 10 2) ) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
		(increase (roughness) (+ (^ (- x1 62.617) 2) (^ (- x2 119.531) 2)))
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.995 running_time) ; t_7 - 0.05
		(> 7.005 running_time) ; t_7 + 0.05
		(< (+ (^ (- x1 65.923) 2) (^ (- x2 143.301) 2)) (^ 10 2) ) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
		(increase (roughness) (+ (^ (- x1 65.923) 2) (^ (- x2 143.301) 2)))
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.995 running_time) ; t_8 - 0.05
		(> 8.005 running_time) ; t_8 + 0.05
		(< (+ (^ (- x1 71.246) 2) (^ (- x2 166.696) 2)) (^ 10 2) ) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
		(increase (roughness) (+ (^ (- x1 71.246) 2) (^ (- x2 166.696) 2)))
	)
)

(:event validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.995 running_time) ; t_9 - 0.05
		(> 9.005 running_time) ; t_9 + 0.05
		(< (+ (^ (- x1 77.029) 2) (^ (- x2 189.989) 2)) (^ 10 2) ) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
		(increase (roughness) (+ (^ (- x1 77.029) 2) (^ (- x2 189.989) 2)))
	)
)

(:event validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.995 running_time) ; t_10 - 0.05
		(> 10.005 running_time) ; t_10 + 0.05
		(< (+ (^ (- x1 83.009) 2) (^ (- x2 213.232) 2)) (^ 10 2) ) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
		(increase (roughness) (+ (^ (- x1 83.009) 2) (^ (- x2 213.232) 2)))
	)
)

(:event validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.995 running_time) ; t_11 - 0.05
		(> 11.005 running_time) ; t_11 + 0.05
		(< (+ (^ (- x1 89.213) 2) (^ (- x2 236.416) 2)) (^ 10 2) ) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
		(increase (roughness) (+ (^ (- x1 89.213) 2) (^ (- x2 236.416) 2)))
	)
)

(:event validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.995 running_time) ; t_12 - 0.05
		(> 12.005 running_time) ; t_12 + 0.05
		(< (+ (^ (- x1 95.66) 2) (^ (- x2 259.534) 2)) (^ 10 2) ) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
		(increase (roughness) (+ (^ (- x1 95.66) 2) (^ (- x2 259.534) 2)))
	)
)

(:event validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.995 running_time) ; t_13 - 0.05
		(> 13.005 running_time) ; t_13 + 0.05
		(< (+ (^ (- x1 102.389) 2) (^ (- x2 282.571) 2)) (^ 10 2) ) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
		(increase (roughness) (+ (^ (- x1 102.389) 2) (^ (- x2 282.571) 2)))
	)
)

(:event validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.995 running_time) ; t_14 - 0.05
		(> 14.005 running_time) ; t_14 + 0.05
		(< (+ (^ (- x1 109.444) 2) (^ (- x2 305.51) 2)) (^ 10 2) ) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
		(increase (roughness) (+ (^ (- x1 109.444) 2) (^ (- x2 305.51) 2)))
	)
)

(:event validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.995 running_time) ; t_15 - 0.05
		(> 15.005 running_time) ; t_15 + 0.05
		(< (+ (^ (- x1 116.888) 2) (^ (- x2 328.326) 2)) (^ 10 2) ) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
		(increase (roughness) (+ (^ (- x1 116.888) 2) (^ (- x2 328.326) 2)))
	)
)

(:event validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.995 running_time) ; t_16 - 0.05
		(> 16.005 running_time) ; t_16 + 0.05
		(< (+ (^ (- x1 124.817) 2) (^ (- x2 350.978) 2)) (^ 10 2) ) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
		(increase (roughness) (+ (^ (- x1 124.817) 2) (^ (- x2 350.978) 2)))
	)
)

(:event validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.995 running_time) ; t_17 - 0.05
		(> 17.005 running_time) ; t_17 + 0.05
		(< (+ (^ (- x1 132.116) 2) (^ (- x2 373.815) 2)) (^ 10 2) ) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
		(increase (roughness) (+ (^ (- x1 132.116) 2) (^ (- x2 373.815) 2)))
	)
)

(:event validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.995 running_time) ; t_18 - 0.05
		(> 18.005 running_time) ; t_18 + 0.05
		(< (+ (^ (- x1 137.998) 2) (^ (- x2 397.083) 2)) (^ 10 2) ) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
		(increase (roughness) (+ (^ (- x1 137.998) 2) (^ (- x2 397.083) 2)))
	)
)

(:event validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.995 running_time) ; t_19 - 0.05
		(> 19.005 running_time) ; t_19 + 0.05
		(< (+ (^ (- x1 143.714) 2) (^ (- x2 420.393) 2)) (^ 10 2) ) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
		(increase (roughness) (+ (^ (- x1 143.714) 2) (^ (- x2 420.393) 2)))
	)
)

(:event validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.995 running_time) ; t_20 - 0.05
		(> 20.005 running_time) ; t_20 + 0.05
		(< (+ (^ (- x1 149.25) 2) (^ (- x2 443.745) 2)) (^ 10 2) ) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
		(increase (roughness) (+ (^ (- x1 149.25) 2) (^ (- x2 443.745) 2)))
	)
)

(:event validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.995 running_time) ; t_21 - 0.05
		(> 21.005 running_time) ; t_21 + 0.05
		(< (+ (^ (- x1 154.588) 2) (^ (- x2 467.144) 2)) (^ 10 2) ) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
		(increase (roughness) (+ (^ (- x1 154.588) 2) (^ (- x2 467.144) 2)))
	)
)

(:event validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.995 running_time) ; t_22 - 0.05
		(> 22.005 running_time) ; t_22 + 0.05
		(< (+ (^ (- x1 159.709) 2) (^ (- x2 490.591) 2)) (^ 10 2) ) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
		(increase (roughness) (+ (^ (- x1 159.709) 2) (^ (- x2 490.591) 2)))
	)
)

(:event validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.995 running_time) ; t_23 - 0.05
		(> 23.005 running_time) ; t_23 + 0.05
		(< (+ (^ (- x1 164.583) 2) (^ (- x2 514.091) 2)) (^ 10 2) ) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
		(increase (roughness) (+ (^ (- x1 164.583) 2) (^ (- x2 514.091) 2)))
	)
)

(:event validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.995 running_time) ; t_24 - 0.05
		(> 24.005 running_time) ; t_24 + 0.05
		(< (+ (^ (- x1 169.174) 2) (^ (- x2 537.648) 2)) (^ 10 2) ) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
		(increase (roughness) (+ (^ (- x1 169.174) 2) (^ (- x2 537.648) 2)))
	)
)

(:event validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.995 running_time) ; t_25 - 0.05
		(> 25.005 running_time) ; t_25 + 0.05
		(< (+ (^ (- x1 173.435) 2) (^ (- x2 561.266) 2)) (^ 10 2) ) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
		(increase (roughness) (+ (^ (- x1 173.435) 2) (^ (- x2 561.266) 2)))
	)
)

(:event validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.995 running_time) ; t_26 - 0.05
		(> 26.005 running_time) ; t_26 + 0.05
		(< (+ (^ (- x1 177.303) 2) (^ (- x2 584.952) 2)) (^ 10 2) ) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
		(increase (roughness) (+ (^ (- x1 177.303) 2) (^ (- x2 584.952) 2)))
	)
)

(:event validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.995 running_time) ; t_27 - 0.05
		(> 27.005 running_time) ; t_27 + 0.05
		(< (+ (^ (- x1 180.678) 2) (^ (- x2 608.713) 2)) (^ 10 2) ) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
		(increase (roughness) (+ (^ (- x1 180.678) 2) (^ (- x2 608.713) 2)))
	)
)

(:event validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.995 running_time) ; t_28 - 0.05
		(> 28.005 running_time) ; t_28 + 0.05
		(< (+ (^ (- x1 182.491) 2) (^ (- x2 632.606) 2)) (^ 10 2) ) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
		(increase (roughness) (+ (^ (- x1 182.491) 2) (^ (- x2 632.606) 2)))
	)
)

(:event validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.995 running_time) ; t_29 - 0.05
		(> 29.005 running_time) ; t_29 + 0.05
		(< (+ (^ (- x1 177.608) 2) (^ (- x2 656.004) 2)) (^ 10 2) ) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
		(increase (roughness) (+ (^ (- x1 177.608) 2) (^ (- x2 656.004) 2)))
	)
)

(:event validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.995 running_time) ; t_30 - 0.05
		(> 30.005 running_time) ; t_30 + 0.05
		(< (+ (^ (- x1 165.733) 2) (^ (- x2 676.747) 2)) (^ 10 2) ) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
		(increase (roughness) (+ (^ (- x1 165.733) 2) (^ (- x2 676.747) 2)))
	)
)

(:event validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.995 running_time) ; t_31 - 0.05
		(> 31.005 running_time) ; t_31 + 0.05
		(< (+ (^ (- x1 148.029) 2) (^ (- x2 692.805) 2)) (^ 10 2) ) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
		(increase (roughness) (+ (^ (- x1 148.029) 2) (^ (- x2 692.805) 2)))
	)
)

(:event validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.995 running_time) ; t_32 - 0.05
		(> 32.005 running_time) ; t_32 + 0.05
		(< (+ (^ (- x1 126.23) 2) (^ (- x2 702.606) 2)) (^ 10 2) ) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
		(increase (roughness) (+ (^ (- x1 126.23) 2) (^ (- x2 702.606) 2)))
	)
)

(:event validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.995 running_time) ; t_33 - 0.05
		(> 33.005 running_time) ; t_33 + 0.05
		(< (+ (^ (- x1 102.469) 2) (^ (- x2 705.192) 2)) (^ 10 2) ) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
		(increase (roughness) (+ (^ (- x1 102.469) 2) (^ (- x2 705.192) 2)))
	)
)

(:event validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.995 running_time) ; t_34 - 0.05
		(> 34.005 running_time) ; t_34 + 0.05
		(< (+ (^ (- x1 79.072) 2) (^ (- x2 700.308) 2)) (^ 10 2) ) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
		(increase (roughness) (+ (^ (- x1 79.072) 2) (^ (- x2 700.308) 2)))
	)
)

(:event validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.995 running_time) ; t_35 - 0.05
		(> 35.005 running_time) ; t_35 + 0.05
		(< (+ (^ (- x1 58.329) 2) (^ (- x2 688.433) 2)) (^ 10 2) ) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
		(increase (roughness) (+ (^ (- x1 58.329) 2) (^ (- x2 688.433) 2)))
	)
)

(:event validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.995 running_time) ; t_36 - 0.05
		(> 36.005 running_time) ; t_36 + 0.05
		(< (+ (^ (- x1 42.271) 2) (^ (- x2 670.73) 2)) (^ 10 2) ) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
		(increase (roughness) (+ (^ (- x1 42.271) 2) (^ (- x2 670.73) 2)))
	)
)

(:event validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.995 running_time) ; t_37 - 0.05
		(> 37.005 running_time) ; t_37 + 0.05
		(< (+ (^ (- x1 32.469) 2) (^ (- x2 648.931) 2)) (^ 10 2) ) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
		(increase (roughness) (+ (^ (- x1 32.469) 2) (^ (- x2 648.931) 2)))
	)
)

(:event validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.995 running_time) ; t_38 - 0.05
		(> 38.005 running_time) ; t_38 + 0.05
		(< (+ (^ (- x1 29.884) 2) (^ (- x2 625.17) 2)) (^ 10 2) ) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
		(increase (roughness) (+ (^ (- x1 29.884) 2) (^ (- x2 625.17) 2)))
	)
)

(:event validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.995 running_time) ; t_39 - 0.05
		(> 39.005 running_time) ; t_39 + 0.05
		(< (+ (^ (- x1 34.766) 2) (^ (- x2 601.772) 2)) (^ 10 2) ) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
		(increase (roughness) (+ (^ (- x1 34.766) 2) (^ (- x2 601.772) 2)))
	)
)

(:event validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.995 running_time) ; t_40 - 0.05
		(> 40.005 running_time) ; t_40 + 0.05
		(< (+ (^ (- x1 42.209) 2) (^ (- x2 578.989) 2)) (^ 10 2) ) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
		(increase (roughness) (+ (^ (- x1 42.209) 2) (^ (- x2 578.989) 2)))
	)
)

(:event validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.995 running_time) ; t_41 - 0.05
		(> 41.005 running_time) ; t_41 + 0.05
		(< (+ (^ (- x1 43.147) 2) (^ (- x2 555.106) 2)) (^ 10 2) ) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
		(increase (roughness) (+ (^ (- x1 43.147) 2) (^ (- x2 555.106) 2)))
	)
)

(:event validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.995 running_time) ; t_42 - 0.05
		(> 42.005 running_time) ; t_42 + 0.05
		(< (+ (^ (- x1 36.659) 2) (^ (- x2 532.102) 2)) (^ 10 2) ) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
		(increase (roughness) (+ (^ (- x1 36.659) 2) (^ (- x2 532.102) 2)))
	)
)

(:event validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.995 running_time) ; t_43 - 0.05
		(> 43.005 running_time) ; t_43 + 0.05
		(< (+ (^ (- x1 23.38) 2) (^ (- x2 512.229) 2)) (^ 10 2) ) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
		(increase (roughness) (+ (^ (- x1 23.38) 2) (^ (- x2 512.229) 2)))
	)
)

(:event validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.995 running_time) ; t_44 - 0.05
		(> 44.005 running_time) ; t_44 + 0.05
		(< (+ (^ (- x1 4.61) 2) (^ (- x2 497.431) 2)) (^ 10 2) ) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
		(increase (roughness) (+ (^ (- x1 4.61) 2) (^ (- x2 497.431) 2)))
	)
)

(:event validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.995 running_time) ; t_45 - 0.05
		(> 45.005 running_time) ; t_45 + 0.05
		(< (+ (^ (- x1 -17.814) 2) (^ (- x2 489.159) 2)) (^ 10 2) ) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
		(increase (roughness) (+ (^ (- x1 -17.814) 2) (^ (- x2 489.159) 2)))
	)
)

(:event validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.995 running_time) ; t_46 - 0.05
		(> 46.005 running_time) ; t_46 + 0.05
		(< (+ (^ (- x1 -41.409) 2) (^ (- x2 484.767) 2)) (^ 10 2) ) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
		(increase (roughness) (+ (^ (- x1 -41.409) 2) (^ (- x2 484.767) 2)))
	)
)

(:event validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.995 running_time) ; t_47 - 0.05
		(> 47.005 running_time) ; t_47 + 0.05
		(< (+ (^ (- x1 -65.005) 2) (^ (- x2 480.381) 2)) (^ 10 2) ) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
		(increase (roughness) (+ (^ (- x1 -65.005) 2) (^ (- x2 480.381) 2)))
	)
)

(:event validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.995 running_time) ; t_48 - 0.05
		(> 48.005 running_time) ; t_48 + 0.05
		(< (+ (^ (- x1 -88.6) 2) (^ (- x2 475.995) 2)) (^ 10 2) ) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
		(increase (roughness) (+ (^ (- x1 -88.6) 2) (^ (- x2 475.995) 2)))
	)
)

(:event validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.995 running_time) ; t_49 - 0.05
		(> 49.005 running_time) ; t_49 + 0.05
		(< (+ (^ (- x1 -112.196) 2) (^ (- x2 471.609) 2)) (^ 10 2) ) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
		(increase (roughness) (+ (^ (- x1 -112.196) 2) (^ (- x2 471.609) 2)))
	)
)

(:event validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.995 running_time) ; t_50 - 0.05
		(> 50.005 running_time) ; t_50 + 0.05
		(< (+ (^ (- x1 -135.137) 2) (^ (- x2 464.844) 2)) (^ 10 2) ) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
		(increase (roughness) (+ (^ (- x1 -135.137) 2) (^ (- x2 464.844) 2)))
	)
)

(:event validate_51
	:parameters ()
	:precondition (and
		(monitor_50)
		(<= 50.995 running_time) ; t_51 - 0.05
		(> 51.005 running_time) ; t_51 + 0.05
		(< (+ (^ (- x1 -154.927) 2) (^ (- x2 451.441) 2)) (^ 10 2) ) ; \phi_51
	)
	:effect (and
		(not (monitor_50))
		(monitor_51)
		(increase (roughness) (+ (^ (- x1 -154.927) 2) (^ (- x2 451.441) 2)))
	)
)

(:event validate_52
	:parameters ()
	:precondition (and
		(monitor_51)
		(<= 51.995 running_time) ; t_52 - 0.05
		(> 52.005 running_time) ; t_52 + 0.05
		(< (+ (^ (- x1 -169.606) 2) (^ (- x2 432.578) 2)) (^ 10 2) ) ; \phi_52
	)
	:effect (and
		(not (monitor_51))
		(monitor_52)
		(increase (roughness) (+ (^ (- x1 -169.606) 2) (^ (- x2 432.578) 2)))
	)
)

(:event validate_53
	:parameters ()
	:precondition (and
		(monitor_52)
		(<= 52.995 running_time) ; t_53 - 0.05
		(> 53.005 running_time) ; t_53 + 0.05
		(< (+ (^ (- x1 -177.737) 2) (^ (- x2 410.102) 2)) (^ 10 2) ) ; \phi_53
	)
	:effect (and
		(not (monitor_52))
		(monitor_53)
		(increase (roughness) (+ (^ (- x1 -177.737) 2) (^ (- x2 410.102) 2)))
	)
)

(:event validate_54
	:parameters ()
	:precondition (and
		(monitor_53)
		(<= 53.995 running_time) ; t_54 - 0.05
		(> 54.005 running_time) ; t_54 + 0.05
		(< (+ (^ (- x1 -178.589) 2) (^ (- x2 386.208) 2)) (^ 10 2) ) ; \phi_54
	)
	:effect (and
		(not (monitor_53))
		(monitor_54)
		(increase (roughness) (+ (^ (- x1 -178.589) 2) (^ (- x2 386.208) 2)))
	)
)

(:event validate_55
	:parameters ()
	:precondition (and
		(monitor_54)
		(<= 54.995 running_time) ; t_55 - 0.05
		(> 55.005 running_time) ; t_55 + 0.05
		(< (+ (^ (- x1 -176.593) 2) (^ (- x2 362.291) 2)) (^ 10 2) ) ; \phi_55
	)
	:effect (and
		(not (monitor_54))
		(monitor_55)
		(increase (roughness) (+ (^ (- x1 -176.593) 2) (^ (- x2 362.291) 2)))
	)
)

(:event validate_56
	:parameters ()
	:precondition (and
		(monitor_55)
		(<= 55.995 running_time) ; t_56 - 0.05
		(> 56.005 running_time) ; t_56 + 0.05
		(< (+ (^ (- x1 -174.597) 2) (^ (- x2 338.374) 2)) (^ 10 2) ) ; \phi_56
	)
	:effect (and
		(not (monitor_55))
		(monitor_56)
		(increase (roughness) (+ (^ (- x1 -174.597) 2) (^ (- x2 338.374) 2)))
	)
)

(:event validate_57
	:parameters ()
	:precondition (and
		(monitor_56)
		(<= 56.995 running_time) ; t_57 - 0.05
		(> 57.005 running_time) ; t_57 + 0.05
		(< (+ (^ (- x1 -172.602) 2) (^ (- x2 314.457) 2)) (^ 10 2) ) ; \phi_57
	)
	:effect (and
		(not (monitor_56))
		(monitor_57)
		(increase (roughness) (+ (^ (- x1 -172.602) 2) (^ (- x2 314.457) 2)))
	)
)

(:event validate_58
	:parameters ()
	:precondition (and
		(monitor_57)
		(<= 57.995 running_time) ; t_58 - 0.05
		(> 58.005 running_time) ; t_58 + 0.05
		(< (+ (^ (- x1 -170.606) 2) (^ (- x2 290.54) 2)) (^ 10 2) ) ; \phi_58
	)
	:effect (and
		(not (monitor_57))
		(monitor_58)
		(increase (roughness) (+ (^ (- x1 -170.606) 2) (^ (- x2 290.54) 2)))
	)
)

(:event validate_59
	:parameters ()
	:precondition (and
		(monitor_58)
		(<= 58.995 running_time) ; t_59 - 0.05
		(> 59.005 running_time) ; t_59 + 0.05
		(< (+ (^ (- x1 -168.607) 2) (^ (- x2 266.624) 2)) (^ 10 2) ) ; \phi_59
	)
	:effect (and
		(not (monitor_58))
		(monitor_59)
		(increase (roughness) (+ (^ (- x1 -168.607) 2) (^ (- x2 266.624) 2)))
	)
)

(:event validate_60
	:parameters ()
	:precondition (and
		(monitor_59)
		(<= 59.995 running_time) ; t_60 - 0.05
		(> 60.005 running_time) ; t_60 + 0.05
		(< (+ (^ (- x1 -165.741) 2) (^ (- x2 242.796) 2)) (^ 10 2) ) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
		(increase (roughness) (+ (^ (- x1 -165.741) 2) (^ (- x2 242.796) 2)))
	)
)

(:event validate_61
	:parameters ()
	:precondition (and
		(monitor_60)
		(<= 60.995 running_time) ; t_61 - 0.05
		(> 61.005 running_time) ; t_61 + 0.05
		(< (+ (^ (- x1 -162.846) 2) (^ (- x2 218.971) 2)) (^ 10 2) ) ; \phi_61
	)
	:effect (and
		(not (monitor_60))
		(monitor_61)
		(increase (roughness) (+ (^ (- x1 -162.846) 2) (^ (- x2 218.971) 2)))
	)
)

(:event validate_62
	:parameters ()
	:precondition (and
		(monitor_61)
		(<= 61.995 running_time) ; t_62 - 0.05
		(> 62.005 running_time) ; t_62 + 0.05
		(< (+ (^ (- x1 -159.919) 2) (^ (- x2 195.15) 2)) (^ 10 2) ) ; \phi_62
	)
	:effect (and
		(not (monitor_61))
		(monitor_62)
		(increase (roughness) (+ (^ (- x1 -159.919) 2) (^ (- x2 195.15) 2)))
	)
)

(:event validate_63
	:parameters ()
	:precondition (and
		(monitor_62)
		(<= 62.995 running_time) ; t_63 - 0.05
		(> 63.005 running_time) ; t_63 + 0.05
		(< (+ (^ (- x1 -156.985) 2) (^ (- x2 171.33) 2)) (^ 10 2) ) ; \phi_63
	)
	:effect (and
		(not (monitor_62))
		(monitor_63)
		(increase (roughness) (+ (^ (- x1 -156.985) 2) (^ (- x2 171.33) 2)))
	)
)

(:event validate_64
	:parameters ()
	:precondition (and
		(monitor_63)
		(<= 63.995 running_time) ; t_64 - 0.05
		(> 64.005 running_time) ; t_64 + 0.05
		(< (+ (^ (- x1 -154.052) 2) (^ (- x2 147.51) 2)) (^ 10 2) ) ; \phi_64
	)
	:effect (and
		(not (monitor_63))
		(monitor_64)
		(increase (roughness) (+ (^ (- x1 -154.052) 2) (^ (- x2 147.51) 2)))
	)
)

(:event validate_65
	:parameters ()
	:precondition (and
		(monitor_64)
		(<= 64.995 running_time) ; t_65 - 0.05
		(> 65.005 running_time) ; t_65 + 0.05
		(< (+ (^ (- x1 -151.119) 2) (^ (- x2 123.69) 2)) (^ 10 2) ) ; \phi_65
	)
	:effect (and
		(not (monitor_64))
		(monitor_65)
		(increase (roughness) (+ (^ (- x1 -151.119) 2) (^ (- x2 123.69) 2)))
	)
)

(:event validate_66
	:parameters ()
	:precondition (and
		(monitor_65)
		(<= 65.995 running_time) ; t_66 - 0.05
		(> 66.005 running_time) ; t_66 + 0.05
		(< (+ (^ (- x1 -148.186) 2) (^ (- x2 99.87) 2)) (^ 10 2) ) ; \phi_66
	)
	:effect (and
		(not (monitor_65))
		(monitor_66)
		(increase (roughness) (+ (^ (- x1 -148.186) 2) (^ (- x2 99.87) 2)))
	)
)

(:event validate_67
	:parameters ()
	:precondition (and
		(monitor_66)
		(<= 66.995 running_time) ; t_67 - 0.05
		(> 67.005 running_time) ; t_67 + 0.05
		(< (+ (^ (- x1 -145.253) 2) (^ (- x2 76.05) 2)) (^ 10 2) ) ; \phi_67
	)
	:effect (and
		(not (monitor_66))
		(monitor_67)
		(increase (roughness) (+ (^ (- x1 -145.253) 2) (^ (- x2 76.05) 2)))
	)
)

(:event validate_68
	:parameters ()
	:precondition (and
		(monitor_67)
		(<= 67.995 running_time) ; t_68 - 0.05
		(> 68.005 running_time) ; t_68 + 0.05
		(< (+ (^ (- x1 -142.32) 2) (^ (- x2 52.23) 2)) (^ 10 2) ) ; \phi_68
	)
	:effect (and
		(not (monitor_67))
		(monitor_68)
		(increase (roughness) (+ (^ (- x1 -142.32) 2) (^ (- x2 52.23) 2)))
	)
)

(:event validate_69
	:parameters ()
	:precondition (and
		(monitor_68)
		(<= 68.995 running_time) ; t_69 - 0.05
		(> 69.005 running_time) ; t_69 + 0.05
		(< (+ (^ (- x1 -139.386) 2) (^ (- x2 28.41) 2)) (^ 10 2) ) ; \phi_69
	)
	:effect (and
		(not (monitor_68))
		(monitor_69)
		(increase (roughness) (+ (^ (- x1 -139.386) 2) (^ (- x2 28.41) 2)))
	)
)

(:event validate_70
	:parameters ()
	:precondition (and
		(monitor_69)
		(<= 69.995 running_time) ; t_70 - 0.05
		(> 70.005 running_time) ; t_70 + 0.05
		(< (+ (^ (- x1 -139.012) 2) (^ (- x2 4.498) 2)) (^ 10 2) ) ; \phi_70
	)
	:effect (and
		(not (monitor_69))
		(monitor_70)
		(increase (roughness) (+ (^ (- x1 -139.012) 2) (^ (- x2 4.498) 2)))
	)
)

(:constraint roughness_bound
	:parameters ()
	:condition (and
		(< roughness max_roughness)
	)
)

)