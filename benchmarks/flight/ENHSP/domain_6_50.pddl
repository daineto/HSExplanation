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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 running_time) ; t_1 - 0.05
		(> 1.05 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 21.129) 2) (^ (- x2 5.795) 2)) (^ 10 2) ) ; \phi_1
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
		(< (+ (^ (- x1 39.434) 2) (^ (- x2 17.836) 2)) (^ 10 2) ) ; \phi_2
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
		(< (+ (^ (- x1 53.122) 2) (^ (- x2 34.943) 2)) (^ 10 2) ) ; \phi_3
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
		(< (+ (^ (- x1 60.853) 2) (^ (- x2 55.443) 2)) (^ 10 2) ) ; \phi_4
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
		(< (+ (^ (- x1 61.871) 2) (^ (- x2 77.329) 2)) (^ 10 2) ) ; \phi_5
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
		(< (+ (^ (- x1 56.076) 2) (^ (- x2 98.459) 2)) (^ 10 2) ) ; \phi_6
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
		(< (+ (^ (- x1 44.168) 2) (^ (- x2 116.873) 2)) (^ 10 2) ) ; \phi_7
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
		(< (+ (^ (- x1 30.353) 2) (^ (- x2 133.994) 2)) (^ 10 2) ) ; \phi_8
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
		(< (+ (^ (- x1 16.201) 2) (^ (- x2 150.837) 2)) (^ 10 2) ) ; \phi_9
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
		(< (+ (^ (- x1 2.639) 2) (^ (- x2 168.112) 2)) (^ 10 2) ) ; \phi_10
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
		(< (+ (^ (- x1 -5.504) 2) (^ (- x2 188.452) 2)) (^ 10 2) ) ; \phi_11
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
		(< (+ (^ (- x1 -6.962) 2) (^ (- x2 210.313) 2)) (^ 10 2) ) ; \phi_12
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
		(< (+ (^ (- x1 -1.594) 2) (^ (- x2 231.555) 2)) (^ 10 2) ) ; \phi_13
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
		(< (+ (^ (- x1 10.076) 2) (^ (- x2 250.098) 2)) (^ 10 2) ) ; \phi_14
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
		(< (+ (^ (- x1 26.905) 2) (^ (- x2 264.128) 2)) (^ 10 2) ) ; \phi_15
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
		(< (+ (^ (- x1 47.245) 2) (^ (- x2 272.27) 2)) (^ 10 2) ) ; \phi_16
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
		(< (+ (^ (- x1 69.106) 2) (^ (- x2 273.729) 2)) (^ 10 2) ) ; \phi_17
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
		(< (+ (^ (- x1 90.348) 2) (^ (- x2 268.36) 2)) (^ 10 2) ) ; \phi_18
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
		(< (+ (^ (- x1 108.891) 2) (^ (- x2 256.69) 2)) (^ 10 2) ) ; \phi_19
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
		(< (+ (^ (- x1 123.389) 2) (^ (- x2 240.198) 2)) (^ 10 2) ) ; \phi_20
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
		(< (+ (^ (- x1 137.631) 2) (^ (- x2 223.48) 2)) (^ 10 2) ) ; \phi_21
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
		(< (+ (^ (- x1 155.951) 2) (^ (- x2 211.463) 2)) (^ 10 2) ) ; \phi_22
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
		(< (+ (^ (- x1 177.087) 2) (^ (- x2 205.695) 2)) (^ 10 2) ) ; \phi_23
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
		(< (+ (^ (- x1 198.972) 2) (^ (- x2 206.741) 2)) (^ 10 2) ) ; \phi_24
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
		(< (+ (^ (- x1 219.462) 2) (^ (- x2 214.499) 2)) (^ 10 2) ) ; \phi_25
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
		(< (+ (^ (- x1 236.553) 2) (^ (- x2 228.208) 2)) (^ 10 2) ) ; \phi_26
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
		(< (+ (^ (- x1 248.57) 2) (^ (- x2 246.528) 2)) (^ 10 2) ) ; \phi_27
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
		(< (+ (^ (- x1 254.372) 2) (^ (- x2 267.661) 2)) (^ 10 2) ) ; \phi_28
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
		(< (+ (^ (- x1 256.658) 2) (^ (- x2 289.523) 2)) (^ 10 2) ) ; \phi_29
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
		(< (+ (^ (- x1 253.217) 2) (^ (- x2 311.16) 2)) (^ 10 2) ) ; \phi_30
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
		(< (+ (^ (- x1 243.258) 2) (^ (- x2 330.676) 2)) (^ 10 2) ) ; \phi_31
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
		(< (+ (^ (- x1 227.755) 2) (^ (- x2 346.158) 2)) (^ 10 2) ) ; \phi_32
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
		(< (+ (^ (- x1 208.227) 2) (^ (- x2 356.092) 2)) (^ 10 2) ) ; \phi_33
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
		(< (+ (^ (- x1 186.585) 2) (^ (- x2 359.506) 2)) (^ 10 2) ) ; \phi_34
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
		(< (+ (^ (- x1 164.947) 2) (^ (- x2 356.065) 2)) (^ 10 2) ) ; \phi_35
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
		(< (+ (^ (- x1 145.432) 2) (^ (- x2 346.105) 2)) (^ 10 2) ) ; \phi_36
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
		(< (+ (^ (- x1 128.927) 2) (^ (- x2 331.579) 2)) (^ 10 2) ) ; \phi_37
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
		(< (+ (^ (- x1 112.711) 2) (^ (- x2 316.711) 2)) (^ 10 2) ) ; \phi_38
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
		(< (+ (^ (- x1 96.495) 2) (^ (- x2 301.843) 2)) (^ 10 2) ) ; \phi_39
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
		(< (+ (^ (- x1 79.751) 2) (^ (- x2 287.615) 2)) (^ 10 2) ) ; \phi_40
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
		(< (+ (^ (- x1 59.846) 2) (^ (- x2 278.46) 2)) (^ 10 2) ) ; \phi_41
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
		(< (+ (^ (- x1 38.085) 2) (^ (- x2 275.905) 2)) (^ 10 2) ) ; \phi_42
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
		(< (+ (^ (- x1 16.601) 2) (^ (- x2 280.2) 2)) (^ 10 2) ) ; \phi_43
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
		(< (+ (^ (- x1 -2.505) 2) (^ (- x2 290.923) 2)) (^ 10 2) ) ; \phi_44
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
		(< (+ (^ (- x1 -17.363) 2) (^ (- x2 307.026) 2)) (^ 10 2) ) ; \phi_45
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
		(< (+ (^ (- x1 -26.517) 2) (^ (- x2 326.931) 2)) (^ 10 2) ) ; \phi_46
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
		(< (+ (^ (- x1 -29.072) 2) (^ (- x2 348.691) 2)) (^ 10 2) ) ; \phi_47
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
		(< (+ (^ (- x1 -24.777) 2) (^ (- x2 370.176) 2)) (^ 10 2) ) ; \phi_48
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
		(< (+ (^ (- x1 -14.054) 2) (^ (- x2 389.282) 2)) (^ 10 2) ) ; \phi_49
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
		(< (+ (^ (- x1 2.047) 2) (^ (- x2 404.141) 2)) (^ 10 2) ) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
	)
)

)