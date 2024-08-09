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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 running_time) ; t_1 - 0.05
		(> 1.05 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 -15.521) 2) (^ (- x2 3.669) 2)) (^ 10 2) ) ; \phi_1
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
		(< (+ (^ (- x1 -30.655) 2) (^ (- x2 8.863) 2)) (^ 10 2) ) ; \phi_2
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
		(< (+ (^ (- x1 -45.74) 2) (^ (- x2 14.194) 2)) (^ 10 2) ) ; \phi_3
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
		(< (+ (^ (- x1 -60.771) 2) (^ (- x2 19.678) 2)) (^ 10 2) ) ; \phi_4
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
		(< (+ (^ (- x1 -75.739) 2) (^ (- x2 25.332) 2)) (^ 10 2) ) ; \phi_5
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
		(< (+ (^ (- x1 -90.63) 2) (^ (- x2 31.183) 2)) (^ 10 2) ) ; \phi_6
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
		(< (+ (^ (- x1 -105.428) 2) (^ (- x2 37.267) 2)) (^ 10 2) ) ; \phi_7
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
		(< (+ (^ (- x1 -120.127) 2) (^ (- x2 43.587) 2)) (^ 10 2) ) ; \phi_8
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
		(< (+ (^ (- x1 -134.812) 2) (^ (- x2 49.941) 2)) (^ 10 2) ) ; \phi_9
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
		(< (+ (^ (- x1 -149.496) 2) (^ (- x2 56.294) 2)) (^ 10 2) ) ; \phi_10
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
		(< (+ (^ (- x1 -164.181) 2) (^ (- x2 62.647) 2)) (^ 10 2) ) ; \phi_11
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
		(< (+ (^ (- x1 -178.865) 2) (^ (- x2 69.001) 2)) (^ 10 2) ) ; \phi_12
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
		(< (+ (^ (- x1 -193.55) 2) (^ (- x2 75.354) 2)) (^ 10 2) ) ; \phi_13
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
		(< (+ (^ (- x1 -208.234) 2) (^ (- x2 81.708) 2)) (^ 10 2) ) ; \phi_14
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
		(< (+ (^ (- x1 -222.919) 2) (^ (- x2 88.061) 2)) (^ 10 2) ) ; \phi_15
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
		(< (+ (^ (- x1 -237.281) 2) (^ (- x2 95.057) 2)) (^ 10 2) ) ; \phi_16
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
		(< (+ (^ (- x1 -249.118) 2) (^ (- x2 105.725) 2)) (^ 10 2) ) ; \phi_17
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
		(< (+ (^ (- x1 -257.079) 2) (^ (- x2 119.528) 2)) (^ 10 2) ) ; \phi_18
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
		(< (+ (^ (- x1 -262.165) 2) (^ (- x2 134.697) 2)) (^ 10 2) ) ; \phi_19
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
		(< (+ (^ (- x1 -267.061) 2) (^ (- x2 149.929) 2)) (^ 10 2) ) ; \phi_20
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
		(< (+ (^ (- x1 -271.791) 2) (^ (- x2 165.214) 2)) (^ 10 2) ) ; \phi_21
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
		(< (+ (^ (- x1 -276.326) 2) (^ (- x2 180.558) 2)) (^ 10 2) ) ; \phi_22
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
		(< (+ (^ (- x1 -280.635) 2) (^ (- x2 195.966) 2)) (^ 10 2) ) ; \phi_23
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
		(< (+ (^ (- x1 -284.56) 2) (^ (- x2 211.474) 2)) (^ 10 2) ) ; \phi_24
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
		(< (+ (^ (- x1 -286.263) 2) (^ (- x2 227.379) 2)) (^ 10 2) ) ; \phi_25
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
		(< (+ (^ (- x1 -287.68) 2) (^ (- x2 243.316) 2)) (^ 10 2) ) ; \phi_26
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
		(< (+ (^ (- x1 -288.981) 2) (^ (- x2 259.263) 2)) (^ 10 2) ) ; \phi_27
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
		(< (+ (^ (- x1 -290.148) 2) (^ (- x2 275.22) 2)) (^ 10 2) ) ; \phi_28
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
		(< (+ (^ (- x1 -291.172) 2) (^ (- x2 291.188) 2)) (^ 10 2) ) ; \phi_29
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
		(< (+ (^ (- x1 -292.035) 2) (^ (- x2 307.164) 2)) (^ 10 2) ) ; \phi_30
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
		(< (+ (^ (- x1 -292.714) 2) (^ (- x2 323.15) 2)) (^ 10 2) ) ; \phi_31
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
		(< (+ (^ (- x1 -293.179) 2) (^ (- x2 339.143) 2)) (^ 10 2) ) ; \phi_32
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
		(< (+ (^ (- x1 -293.395) 2) (^ (- x2 355.141) 2)) (^ 10 2) ) ; \phi_33
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
		(< (+ (^ (- x1 -294.169) 2) (^ (- x2 371.096) 2)) (^ 10 2) ) ; \phi_34
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
		(< (+ (^ (- x1 -299.355) 2) (^ (- x2 386.163) 2)) (^ 10 2) ) ; \phi_35
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
		(< (+ (^ (- x1 -308.943) 2) (^ (- x2 398.89) 2)) (^ 10 2) ) ; \phi_36
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
		(< (+ (^ (- x1 -321.995) 2) (^ (- x2 408.03) 2)) (^ 10 2) ) ; \phi_37
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
		(< (+ (^ (- x1 -337.189) 2) (^ (- x2 412.902) 2)) (^ 10 2) ) ; \phi_38
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
		(< (+ (^ (- x1 -352.79) 2) (^ (- x2 416.454) 2)) (^ 10 2) ) ; \phi_39
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
		(< (+ (^ (- x1 -368.439) 2) (^ (- x2 419.787) 2)) (^ 10 2) ) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
	)
)

)