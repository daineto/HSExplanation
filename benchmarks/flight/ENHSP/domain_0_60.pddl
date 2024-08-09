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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 running_time) ; t_1 - 0.05
		(> 1.05 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 -10.448) 2) (^ (- x2 -16.958) 2)) (^ 10 2) ) ; \phi_1
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
		(< (+ (^ (- x1 -25.624) 2) (^ (- x2 -29.857) 2)) (^ 10 2) ) ; \phi_2
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
		(< (+ (^ (- x1 -44.044) 2) (^ (- x2 -37.436) 2)) (^ 10 2) ) ; \phi_3
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
		(< (+ (^ (- x1 -63.904) 2) (^ (- x2 -38.951) 2)) (^ 10 2) ) ; \phi_4
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
		(< (+ (^ (- x1 -83.26) 2) (^ (- x2 -34.255) 2)) (^ 10 2) ) ; \phi_5
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
		(< (+ (^ (- x1 -100.218) 2) (^ (- x2 -23.807) 2)) (^ 10 2) ) ; \phi_6
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
		(< (+ (^ (- x1 -113.118) 2) (^ (- x2 -8.631) 2)) (^ 10 2) ) ; \phi_7
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
		(< (+ (^ (- x1 -120.696) 2) (^ (- x2 9.789) 2)) (^ 10 2) ) ; \phi_8
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
		(< (+ (^ (- x1 -122.211) 2) (^ (- x2 29.649) 2)) (^ 10 2) ) ; \phi_9
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
		(< (+ (^ (- x1 -117.515) 2) (^ (- x2 49.005) 2)) (^ 10 2) ) ; \phi_10
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
		(< (+ (^ (- x1 -107.068) 2) (^ (- x2 65.963) 2)) (^ 10 2) ) ; \phi_11
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
		(< (+ (^ (- x1 -92.922) 2) (^ (- x2 80.094) 2)) (^ 10 2) ) ; \phi_12
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
		(< (+ (^ (- x1 -78.504) 2) (^ (- x2 93.954) 2)) (^ 10 2) ) ; \phi_13
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
		(< (+ (^ (- x1 -63.971) 2) (^ (- x2 107.694) 2)) (^ 10 2) ) ; \phi_14
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
		(< (+ (^ (- x1 -49.315) 2) (^ (- x2 121.303) 2)) (^ 10 2) ) ; \phi_15
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
		(< (+ (^ (- x1 -34.523) 2) (^ (- x2 134.764) 2)) (^ 10 2) ) ; \phi_16
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
		(< (+ (^ (- x1 -19.575) 2) (^ (- x2 148.05) 2)) (^ 10 2) ) ; \phi_17
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
		(< (+ (^ (- x1 -4.45) 2) (^ (- x2 161.136) 2)) (^ 10 2) ) ; \phi_18
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
		(< (+ (^ (- x1 10.877) 2) (^ (- x2 173.984) 2)) (^ 10 2) ) ; \phi_19
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
		(< (+ (^ (- x1 26.451) 2) (^ (- x2 186.532) 2)) (^ 10 2) ) ; \phi_20
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
		(< (+ (^ (- x1 43.254) 2) (^ (- x2 197.259) 2)) (^ 10 2) ) ; \phi_21
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
		(< (+ (^ (- x1 62.495) 2) (^ (- x2 202.408) 2)) (^ 10 2) ) ; \phi_22
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
		(< (+ (^ (- x1 82.385) 2) (^ (- x2 201.36) 2)) (^ 10 2) ) ; \phi_23
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
		(< (+ (^ (- x1 100.978) 2) (^ (- x2 194.216) 2)) (^ 10 2) ) ; \phi_24
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
		(< (+ (^ (- x1 116.453) 2) (^ (- x2 181.677) 2)) (^ 10 2) ) ; \phi_25
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
		(< (+ (^ (- x1 127.296) 2) (^ (- x2 164.969) 2)) (^ 10 2) ) ; \phi_26
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
		(< (+ (^ (- x1 132.446) 2) (^ (- x2 145.729) 2)) (^ 10 2) ) ; \phi_27
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
		(< (+ (^ (- x1 131.398) 2) (^ (- x2 125.839) 2)) (^ 10 2) ) ; \phi_28
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
		(< (+ (^ (- x1 124.254) 2) (^ (- x2 107.246) 2)) (^ 10 2) ) ; \phi_29
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
		(< (+ (^ (- x1 111.715) 2) (^ (- x2 91.77) 2)) (^ 10 2) ) ; \phi_30
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
		(< (+ (^ (- x1 95.03) 2) (^ (- x2 80.88) 2)) (^ 10 2) ) ; \phi_31
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
		(< (+ (^ (- x1 77.025) 2) (^ (- x2 72.173) 2)) (^ 10 2) ) ; \phi_32
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
		(< (+ (^ (- x1 58.868) 2) (^ (- x2 63.788) 2)) (^ 10 2) ) ; \phi_33
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
		(< (+ (^ (- x1 40.756) 2) (^ (- x2 55.335) 2)) (^ 10 2) ) ; \phi_34
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
		(< (+ (^ (- x1 25.378) 2) (^ (- x2 42.675) 2)) (^ 10 2) ) ; \phi_35
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
		(< (+ (^ (- x1 14.666) 2) (^ (- x2 25.883) 2)) (^ 10 2) ) ; \phi_36
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
		(< (+ (^ (- x1 9.666) 2) (^ (- x2 6.603) 2)) (^ 10 2) ) ; \phi_37
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
		(< (+ (^ (- x1 10.87) 2) (^ (- x2 -13.278) 2)) (^ 10 2) ) ; \phi_38
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
		(< (+ (^ (- x1 18.158) 2) (^ (- x2 -31.815) 2)) (^ 10 2) ) ; \phi_39
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
		(< (+ (^ (- x1 30.817) 2) (^ (- x2 -47.192) 2)) (^ 10 2) ) ; \phi_40
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
		(< (+ (^ (- x1 47.609) 2) (^ (- x2 -57.905) 2)) (^ 10 2) ) ; \phi_41
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
		(< (+ (^ (- x1 66.889) 2) (^ (- x2 -62.904) 2)) (^ 10 2) ) ; \phi_42
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
		(< (+ (^ (- x1 86.77) 2) (^ (- x2 -61.701) 2)) (^ 10 2) ) ; \phi_43
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
		(< (+ (^ (- x1 105.307) 2) (^ (- x2 -54.413) 2)) (^ 10 2) ) ; \phi_44
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
		(< (+ (^ (- x1 120.684) 2) (^ (- x2 -41.754) 2)) (^ 10 2) ) ; \phi_45
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
		(< (+ (^ (- x1 132.109) 2) (^ (- x2 -25.367) 2)) (^ 10 2) ) ; \phi_46
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
		(< (+ (^ (- x1 142.786) 2) (^ (- x2 -8.456) 2)) (^ 10 2) ) ; \phi_47
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
		(< (+ (^ (- x1 153.253) 2) (^ (- x2 8.586) 2)) (^ 10 2) ) ; \phi_48
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
		(< (+ (^ (- x1 163.474) 2) (^ (- x2 25.777) 2)) (^ 10 2) ) ; \phi_49
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
		(< (+ (^ (- x1 173.396) 2) (^ (- x2 43.142) 2)) (^ 10 2) ) ; \phi_50
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
		(< (+ (^ (- x1 182.768) 2) (^ (- x2 60.803) 2)) (^ 10 2) ) ; \phi_51
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
		(< (+ (^ (- x1 188.158) 2) (^ (- x2 80.016) 2)) (^ 10 2) ) ; \phi_52
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
		(< (+ (^ (- x1 192.195) 2) (^ (- x2 99.604) 2)) (^ 10 2) ) ; \phi_53
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
		(< (+ (^ (- x1 196.099) 2) (^ (- x2 119.219) 2)) (^ 10 2) ) ; \phi_54
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
		(< (+ (^ (- x1 199.861) 2) (^ (- x2 138.862) 2)) (^ 10 2) ) ; \phi_55
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
		(< (+ (^ (- x1 203.462) 2) (^ (- x2 158.535) 2)) (^ 10 2) ) ; \phi_56
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
		(< (+ (^ (- x1 206.887) 2) (^ (- x2 178.24) 2)) (^ 10 2) ) ; \phi_57
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
		(< (+ (^ (- x1 210.117) 2) (^ (- x2 197.977) 2)) (^ 10 2) ) ; \phi_58
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
		(< (+ (^ (- x1 213.123) 2) (^ (- x2 217.75) 2)) (^ 10 2) ) ; \phi_59
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
		(< (+ (^ (- x1 215.872) 2) (^ (- x2 237.56) 2)) (^ 10 2) ) ; \phi_60
	)
	:effect (and
		(not (monitor_59))
		(monitor_60)
	)
)

)