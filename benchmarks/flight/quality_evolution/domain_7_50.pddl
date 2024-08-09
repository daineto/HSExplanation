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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:event validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.995 running_time) ; t_1 - 0.05
		(> 1.005 running_time) ; t_1 + 0.05
		(< (+ (^ (- x1 14.854) 2) (^ (- x2 16.105) 2)) (^ 10 2) ) ; \phi_1
	)
	:effect (and
		(not (monitor_0))
		(monitor_1)
		(increase (roughness) (+ (^ (- x1 14.854) 2) (^ (- x2 16.105) 2)))
	)
)

(:event validate_2
	:parameters ()
	:precondition (and
		(monitor_1)
		(<= 1.995 running_time) ; t_2 - 0.05
		(> 2.005 running_time) ; t_2 + 0.05
		(< (+ (^ (- x1 24.005) 2) (^ (- x2 36.012) 2)) (^ 10 2) ) ; \phi_2
	)
	:effect (and
		(not (monitor_1))
		(monitor_2)
		(increase (roughness) (+ (^ (- x1 24.005) 2) (^ (- x2 36.012) 2)))
	)
)

(:event validate_3
	:parameters ()
	:precondition (and
		(monitor_2)
		(<= 2.995 running_time) ; t_3 - 0.05
		(> 3.005 running_time) ; t_3 + 0.05
		(< (+ (^ (- x1 26.556) 2) (^ (- x2 57.773) 2)) (^ 10 2) ) ; \phi_3
	)
	:effect (and
		(not (monitor_2))
		(monitor_3)
		(increase (roughness) (+ (^ (- x1 26.556) 2) (^ (- x2 57.773) 2)))
	)
)

(:event validate_4
	:parameters ()
	:precondition (and
		(monitor_3)
		(<= 3.995 running_time) ; t_4 - 0.05
		(> 4.005 running_time) ; t_4 + 0.05
		(< (+ (^ (- x1 22.258) 2) (^ (- x2 79.257) 2)) (^ 10 2) ) ; \phi_4
	)
	:effect (and
		(not (monitor_3))
		(monitor_4)
		(increase (roughness) (+ (^ (- x1 22.258) 2) (^ (- x2 79.257) 2)))
	)
)

(:event validate_5
	:parameters ()
	:precondition (and
		(monitor_4)
		(<= 4.995 running_time) ; t_5 - 0.05
		(> 5.005 running_time) ; t_5 + 0.05
		(< (+ (^ (- x1 11.532) 2) (^ (- x2 98.361) 2)) (^ 10 2) ) ; \phi_5
	)
	:effect (and
		(not (monitor_4))
		(monitor_5)
		(increase (roughness) (+ (^ (- x1 11.532) 2) (^ (- x2 98.361) 2)))
	)
)

(:event validate_6
	:parameters ()
	:precondition (and
		(monitor_5)
		(<= 5.995 running_time) ; t_6 - 0.05
		(> 6.005 running_time) ; t_6 + 0.05
		(< (+ (^ (- x1 -4.574) 2) (^ (- x2 113.216) 2)) (^ 10 2) ) ; \phi_6
	)
	:effect (and
		(not (monitor_5))
		(monitor_6)
		(increase (roughness) (+ (^ (- x1 -4.574) 2) (^ (- x2 113.216) 2)))
	)
)

(:event validate_7
	:parameters ()
	:precondition (and
		(monitor_6)
		(<= 6.995 running_time) ; t_7 - 0.05
		(> 7.005 running_time) ; t_7 + 0.05
		(< (+ (^ (- x1 -24.481) 2) (^ (- x2 122.366) 2)) (^ 10 2) ) ; \phi_7
	)
	:effect (and
		(not (monitor_6))
		(monitor_7)
		(increase (roughness) (+ (^ (- x1 -24.481) 2) (^ (- x2 122.366) 2)))
	)
)

(:event validate_8
	:parameters ()
	:precondition (and
		(monitor_7)
		(<= 7.995 running_time) ; t_8 - 0.05
		(> 8.005 running_time) ; t_8 + 0.05
		(< (+ (^ (- x1 -46.241) 2) (^ (- x2 124.918) 2)) (^ 10 2) ) ; \phi_8
	)
	:effect (and
		(not (monitor_7))
		(monitor_8)
		(increase (roughness) (+ (^ (- x1 -46.241) 2) (^ (- x2 124.918) 2)))
	)
)

(:event validate_9
	:parameters ()
	:precondition (and
		(monitor_8)
		(<= 8.995 running_time) ; t_9 - 0.05
		(> 9.005 running_time) ; t_9 + 0.05
		(< (+ (^ (- x1 -68.021) 2) (^ (- x2 121.913) 2)) (^ 10 2) ) ; \phi_9
	)
	:effect (and
		(not (monitor_8))
		(monitor_9)
		(increase (roughness) (+ (^ (- x1 -68.021) 2) (^ (- x2 121.913) 2)))
	)
)

(:event validate_10
	:parameters ()
	:precondition (and
		(monitor_9)
		(<= 9.995 running_time) ; t_10 - 0.05
		(> 10.005 running_time) ; t_10 + 0.05
		(< (+ (^ (- x1 -89.741) 2) (^ (- x2 118.413) 2)) (^ 10 2) ) ; \phi_10
	)
	:effect (and
		(not (monitor_9))
		(monitor_10)
		(increase (roughness) (+ (^ (- x1 -89.741) 2) (^ (- x2 118.413) 2)))
	)
)

(:event validate_11
	:parameters ()
	:precondition (and
		(monitor_10)
		(<= 10.995 running_time) ; t_11 - 0.05
		(> 11.005 running_time) ; t_11 + 0.05
		(< (+ (^ (- x1 -110.864) 2) (^ (- x2 112.554) 2)) (^ 10 2) ) ; \phi_11
	)
	:effect (and
		(not (monitor_10))
		(monitor_11)
		(increase (roughness) (+ (^ (- x1 -110.864) 2) (^ (- x2 112.554) 2)))
	)
)

(:event validate_12
	:parameters ()
	:precondition (and
		(monitor_11)
		(<= 11.995 running_time) ; t_12 - 0.05
		(> 12.005 running_time) ; t_12 + 0.05
		(< (+ (^ (- x1 -129.182) 2) (^ (- x2 100.534) 2)) (^ 10 2) ) ; \phi_12
	)
	:effect (and
		(not (monitor_11))
		(monitor_12)
		(increase (roughness) (+ (^ (- x1 -129.182) 2) (^ (- x2 100.534) 2)))
	)
)

(:event validate_13
	:parameters ()
	:precondition (and
		(monitor_12)
		(<= 12.995 running_time) ; t_13 - 0.05
		(> 13.005 running_time) ; t_13 + 0.05
		(< (+ (^ (- x1 -142.946) 2) (^ (- x2 83.477) 2)) (^ 10 2) ) ; \phi_13
	)
	:effect (and
		(not (monitor_12))
		(monitor_13)
		(increase (roughness) (+ (^ (- x1 -142.946) 2) (^ (- x2 83.477) 2)))
	)
)

(:event validate_14
	:parameters ()
	:precondition (and
		(monitor_13)
		(<= 13.995 running_time) ; t_14 - 0.05
		(> 14.005 running_time) ; t_14 + 0.05
		(< (+ (^ (- x1 -154.685) 2) (^ (- x2 64.87) 2)) (^ 10 2) ) ; \phi_14
	)
	:effect (and
		(not (monitor_13))
		(monitor_14)
		(increase (roughness) (+ (^ (- x1 -154.685) 2) (^ (- x2 64.87) 2)))
	)
)

(:event validate_15
	:parameters ()
	:precondition (and
		(monitor_14)
		(<= 14.995 running_time) ; t_15 - 0.05
		(> 15.005 running_time) ; t_15 + 0.05
		(< (+ (^ (- x1 -166.423) 2) (^ (- x2 46.263) 2)) (^ 10 2) ) ; \phi_15
	)
	:effect (and
		(not (monitor_14))
		(monitor_15)
		(increase (roughness) (+ (^ (- x1 -166.423) 2) (^ (- x2 46.263) 2)))
	)
)

(:event validate_16
	:parameters ()
	:precondition (and
		(monitor_15)
		(<= 15.995 running_time) ; t_16 - 0.05
		(> 16.005 running_time) ; t_16 + 0.05
		(< (+ (^ (- x1 -178.141) 2) (^ (- x2 27.643) 2)) (^ 10 2) ) ; \phi_16
	)
	:effect (and
		(not (monitor_15))
		(monitor_16)
		(increase (roughness) (+ (^ (- x1 -178.141) 2) (^ (- x2 27.643) 2)))
	)
)

(:event validate_17
	:parameters ()
	:precondition (and
		(monitor_16)
		(<= 16.995 running_time) ; t_17 - 0.05
		(> 17.005 running_time) ; t_17 + 0.05
		(< (+ (^ (- x1 -189.85) 2) (^ (- x2 9.018) 2)) (^ 10 2) ) ; \phi_17
	)
	:effect (and
		(not (monitor_16))
		(monitor_17)
		(increase (roughness) (+ (^ (- x1 -189.85) 2) (^ (- x2 9.018) 2)))
	)
)

(:event validate_18
	:parameters ()
	:precondition (and
		(monitor_17)
		(<= 17.995 running_time) ; t_18 - 0.05
		(> 18.005 running_time) ; t_18 + 0.05
		(< (+ (^ (- x1 -201.559) 2) (^ (- x2 -9.607) 2)) (^ 10 2) ) ; \phi_18
	)
	:effect (and
		(not (monitor_17))
		(monitor_18)
		(increase (roughness) (+ (^ (- x1 -201.559) 2) (^ (- x2 -9.607) 2)))
	)
)

(:event validate_19
	:parameters ()
	:precondition (and
		(monitor_18)
		(<= 18.995 running_time) ; t_19 - 0.05
		(> 19.005 running_time) ; t_19 + 0.05
		(< (+ (^ (- x1 -213.517) 2) (^ (- x2 -28.064) 2)) (^ 10 2) ) ; \phi_19
	)
	:effect (and
		(not (monitor_18))
		(monitor_19)
		(increase (roughness) (+ (^ (- x1 -213.517) 2) (^ (- x2 -28.064) 2)))
	)
)

(:event validate_20
	:parameters ()
	:precondition (and
		(monitor_19)
		(<= 19.995 running_time) ; t_20 - 0.05
		(> 20.005 running_time) ; t_20 + 0.05
		(< (+ (^ (- x1 -229.401) 2) (^ (- x2 -43.155) 2)) (^ 10 2) ) ; \phi_20
	)
	:effect (and
		(not (monitor_19))
		(monitor_20)
		(increase (roughness) (+ (^ (- x1 -229.401) 2) (^ (- x2 -43.155) 2)))
	)
)

(:event validate_21
	:parameters ()
	:precondition (and
		(monitor_20)
		(<= 20.995 running_time) ; t_21 - 0.05
		(> 21.005 running_time) ; t_21 + 0.05
		(< (+ (^ (- x1 -249.171) 2) (^ (- x2 -52.599) 2)) (^ 10 2) ) ; \phi_21
	)
	:effect (and
		(not (monitor_20))
		(monitor_21)
		(increase (roughness) (+ (^ (- x1 -249.171) 2) (^ (- x2 -52.599) 2)))
	)
)

(:event validate_22
	:parameters ()
	:precondition (and
		(monitor_21)
		(<= 21.995 running_time) ; t_22 - 0.05
		(> 22.005 running_time) ; t_22 + 0.05
		(< (+ (^ (- x1 -270.891) 2) (^ (- x2 -55.472) 2)) (^ 10 2) ) ; \phi_22
	)
	:effect (and
		(not (monitor_21))
		(monitor_22)
		(increase (roughness) (+ (^ (- x1 -270.891) 2) (^ (- x2 -55.472) 2)))
	)
)

(:event validate_23
	:parameters ()
	:precondition (and
		(monitor_22)
		(<= 22.995 running_time) ; t_23 - 0.05
		(> 23.005 running_time) ; t_23 + 0.05
		(< (+ (^ (- x1 -292.436) 2) (^ (- x2 -51.491) 2)) (^ 10 2) ) ; \phi_23
	)
	:effect (and
		(not (monitor_22))
		(monitor_23)
		(increase (roughness) (+ (^ (- x1 -292.436) 2) (^ (- x2 -51.491) 2)))
	)
)

(:event validate_24
	:parameters ()
	:precondition (and
		(monitor_23)
		(<= 23.995 running_time) ; t_24 - 0.05
		(> 24.005 running_time) ; t_24 + 0.05
		(< (+ (^ (- x1 -311.697) 2) (^ (- x2 -41.048) 2)) (^ 10 2) ) ; \phi_24
	)
	:effect (and
		(not (monitor_23))
		(monitor_24)
		(increase (roughness) (+ (^ (- x1 -311.697) 2) (^ (- x2 -41.048) 2)))
	)
)

(:event validate_25
	:parameters ()
	:precondition (and
		(monitor_24)
		(<= 24.995 running_time) ; t_25 - 0.05
		(> 25.005 running_time) ; t_25 + 0.05
		(< (+ (^ (- x1 -326.788) 2) (^ (- x2 -25.164) 2)) (^ 10 2) ) ; \phi_25
	)
	:effect (and
		(not (monitor_24))
		(monitor_25)
		(increase (roughness) (+ (^ (- x1 -326.788) 2) (^ (- x2 -25.164) 2)))
	)
)

(:event validate_26
	:parameters ()
	:precondition (and
		(monitor_25)
		(<= 25.995 running_time) ; t_26 - 0.05
		(> 26.005 running_time) ; t_26 + 0.05
		(< (+ (^ (- x1 -336.232) 2) (^ (- x2 -5.394) 2)) (^ 10 2) ) ; \phi_26
	)
	:effect (and
		(not (monitor_25))
		(monitor_26)
		(increase (roughness) (+ (^ (- x1 -336.232) 2) (^ (- x2 -5.394) 2)))
	)
)

(:event validate_27
	:parameters ()
	:precondition (and
		(monitor_26)
		(<= 26.995 running_time) ; t_27 - 0.05
		(> 27.005 running_time) ; t_27 + 0.05
		(< (+ (^ (- x1 -339.104) 2) (^ (- x2 16.326) 2)) (^ 10 2) ) ; \phi_27
	)
	:effect (and
		(not (monitor_26))
		(monitor_27)
		(increase (roughness) (+ (^ (- x1 -339.104) 2) (^ (- x2 16.326) 2)))
	)
)

(:event validate_28
	:parameters ()
	:precondition (and
		(monitor_27)
		(<= 27.995 running_time) ; t_28 - 0.05
		(> 28.005 running_time) ; t_28 + 0.05
		(< (+ (^ (- x1 -335.124) 2) (^ (- x2 37.871) 2)) (^ 10 2) ) ; \phi_28
	)
	:effect (and
		(not (monitor_27))
		(monitor_28)
		(increase (roughness) (+ (^ (- x1 -335.124) 2) (^ (- x2 37.871) 2)))
	)
)

(:event validate_29
	:parameters ()
	:precondition (and
		(monitor_28)
		(<= 28.995 running_time) ; t_29 - 0.05
		(> 29.005 running_time) ; t_29 + 0.05
		(< (+ (^ (- x1 -326.161) 2) (^ (- x2 57.954) 2)) (^ 10 2) ) ; \phi_29
	)
	:effect (and
		(not (monitor_28))
		(monitor_29)
		(increase (roughness) (+ (^ (- x1 -326.161) 2) (^ (- x2 57.954) 2)))
	)
)

(:event validate_30
	:parameters ()
	:precondition (and
		(monitor_29)
		(<= 29.995 running_time) ; t_30 - 0.05
		(> 30.005 running_time) ; t_30 + 0.05
		(< (+ (^ (- x1 -316.54) 2) (^ (- x2 77.738) 2)) (^ 10 2) ) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
		(increase (roughness) (+ (^ (- x1 -316.54) 2) (^ (- x2 77.738) 2)))
	)
)

(:event validate_31
	:parameters ()
	:precondition (and
		(monitor_30)
		(<= 30.995 running_time) ; t_31 - 0.05
		(> 31.005 running_time) ; t_31 + 0.05
		(< (+ (^ (- x1 -304.142) 2) (^ (- x2 95.806) 2)) (^ 10 2) ) ; \phi_31
	)
	:effect (and
		(not (monitor_30))
		(monitor_31)
		(increase (roughness) (+ (^ (- x1 -304.142) 2) (^ (- x2 95.806) 2)))
	)
)

(:event validate_32
	:parameters ()
	:precondition (and
		(monitor_31)
		(<= 31.995 running_time) ; t_32 - 0.05
		(> 32.005 running_time) ; t_32 + 0.05
		(< (+ (^ (- x1 -286.782) 2) (^ (- x2 109.172) 2)) (^ 10 2) ) ; \phi_32
	)
	:effect (and
		(not (monitor_31))
		(monitor_32)
		(increase (roughness) (+ (^ (- x1 -286.782) 2) (^ (- x2 109.172) 2)))
	)
)

(:event validate_33
	:parameters ()
	:precondition (and
		(monitor_32)
		(<= 32.995 running_time) ; t_33 - 0.05
		(> 33.005 running_time) ; t_33 + 0.05
		(< (+ (^ (- x1 -266.141) 2) (^ (- x2 116.519) 2)) (^ 10 2) ) ; \phi_33
	)
	:effect (and
		(not (monitor_32))
		(monitor_33)
		(increase (roughness) (+ (^ (- x1 -266.141) 2) (^ (- x2 116.519) 2)))
	)
)

(:event validate_34
	:parameters ()
	:precondition (and
		(monitor_33)
		(<= 33.995 running_time) ; t_34 - 0.05
		(> 34.005 running_time) ; t_34 + 0.05
		(< (+ (^ (- x1 -244.239) 2) (^ (- x2 117.129) 2)) (^ 10 2) ) ; \phi_34
	)
	:effect (and
		(not (monitor_33))
		(monitor_34)
		(increase (roughness) (+ (^ (- x1 -244.239) 2) (^ (- x2 117.129) 2)))
	)
)

(:event validate_35
	:parameters ()
	:precondition (and
		(monitor_34)
		(<= 34.995 running_time) ; t_35 - 0.05
		(> 35.005 running_time) ; t_35 + 0.05
		(< (+ (^ (- x1 -223.197) 2) (^ (- x2 110.998) 2)) (^ 10 2) ) ; \phi_35
	)
	:effect (and
		(not (monitor_34))
		(monitor_35)
		(increase (roughness) (+ (^ (- x1 -223.197) 2) (^ (- x2 110.998) 2)))
	)
)

(:event validate_36
	:parameters ()
	:precondition (and
		(monitor_35)
		(<= 35.995 running_time) ; t_36 - 0.05
		(> 36.005 running_time) ; t_36 + 0.05
		(< (+ (^ (- x1 -203.004) 2) (^ (- x2 102.265) 2)) (^ 10 2) ) ; \phi_36
	)
	:effect (and
		(not (monitor_35))
		(monitor_36)
		(increase (roughness) (+ (^ (- x1 -203.004) 2) (^ (- x2 102.265) 2)))
	)
)

(:event validate_37
	:parameters ()
	:precondition (and
		(monitor_36)
		(<= 36.995 running_time) ; t_37 - 0.05
		(> 37.005 running_time) ; t_37 + 0.05
		(< (+ (^ (- x1 -182.921) 2) (^ (- x2 93.284) 2)) (^ 10 2) ) ; \phi_37
	)
	:effect (and
		(not (monitor_36))
		(monitor_37)
		(increase (roughness) (+ (^ (- x1 -182.921) 2) (^ (- x2 93.284) 2)))
	)
)

(:event validate_38
	:parameters ()
	:precondition (and
		(monitor_37)
		(<= 37.995 running_time) ; t_38 - 0.05
		(> 38.005 running_time) ; t_38 + 0.05
		(< (+ (^ (- x1 -162.971) 2) (^ (- x2 84.011) 2)) (^ 10 2) ) ; \phi_38
	)
	:effect (and
		(not (monitor_37))
		(monitor_38)
		(increase (roughness) (+ (^ (- x1 -162.971) 2) (^ (- x2 84.011) 2)))
	)
)

(:event validate_39
	:parameters ()
	:precondition (and
		(monitor_38)
		(<= 38.995 running_time) ; t_39 - 0.05
		(> 39.005 running_time) ; t_39 + 0.05
		(< (+ (^ (- x1 -143.187) 2) (^ (- x2 74.389) 2)) (^ 10 2) ) ; \phi_39
	)
	:effect (and
		(not (monitor_38))
		(monitor_39)
		(increase (roughness) (+ (^ (- x1 -143.187) 2) (^ (- x2 74.389) 2)))
	)
)

(:event validate_40
	:parameters ()
	:precondition (and
		(monitor_39)
		(<= 39.995 running_time) ; t_40 - 0.05
		(> 40.005 running_time) ; t_40 + 0.05
		(< (+ (^ (- x1 -123.621) 2) (^ (- x2 64.333) 2)) (^ 10 2) ) ; \phi_40
	)
	:effect (and
		(not (monitor_39))
		(monitor_40)
		(increase (roughness) (+ (^ (- x1 -123.621) 2) (^ (- x2 64.333) 2)))
	)
)

(:event validate_41
	:parameters ()
	:precondition (and
		(monitor_40)
		(<= 40.995 running_time) ; t_41 - 0.05
		(> 41.005 running_time) ; t_41 + 0.05
		(< (+ (^ (- x1 -106.189) 2) (^ (- x2 51.06) 2)) (^ 10 2) ) ; \phi_41
	)
	:effect (and
		(not (monitor_40))
		(monitor_41)
		(increase (roughness) (+ (^ (- x1 -106.189) 2) (^ (- x2 51.06) 2)))
	)
)

(:event validate_42
	:parameters ()
	:precondition (and
		(monitor_41)
		(<= 41.995 running_time) ; t_42 - 0.05
		(> 42.005 running_time) ; t_42 + 0.05
		(< (+ (^ (- x1 -93.712) 2) (^ (- x2 33.05) 2)) (^ 10 2) ) ; \phi_42
	)
	:effect (and
		(not (monitor_41))
		(monitor_42)
		(increase (roughness) (+ (^ (- x1 -93.712) 2) (^ (- x2 33.05) 2)))
	)
)

(:event validate_43
	:parameters ()
	:precondition (and
		(monitor_42)
		(<= 42.995 running_time) ; t_43 - 0.05
		(> 43.005 running_time) ; t_43 + 0.05
		(< (+ (^ (- x1 -87.411) 2) (^ (- x2 12.066) 2)) (^ 10 2) ) ; \phi_43
	)
	:effect (and
		(not (monitor_42))
		(monitor_43)
		(increase (roughness) (+ (^ (- x1 -87.411) 2) (^ (- x2 12.066) 2)))
	)
)

(:event validate_44
	:parameters ()
	:precondition (and
		(monitor_43)
		(<= 43.995 running_time) ; t_44 - 0.05
		(> 44.005 running_time) ; t_44 + 0.05
		(< (+ (^ (- x1 -87.903) 2) (^ (- x2 -9.839) 2)) (^ 10 2) ) ; \phi_44
	)
	:effect (and
		(not (monitor_43))
		(monitor_44)
		(increase (roughness) (+ (^ (- x1 -87.903) 2) (^ (- x2 -9.839) 2)))
	)
)

(:event validate_45
	:parameters ()
	:precondition (and
		(monitor_44)
		(<= 44.995 running_time) ; t_45 - 0.05
		(> 45.005 running_time) ; t_45 + 0.05
		(< (+ (^ (- x1 -94.625) 2) (^ (- x2 -30.742) 2)) (^ 10 2) ) ; \phi_45
	)
	:effect (and
		(not (monitor_44))
		(monitor_45)
		(increase (roughness) (+ (^ (- x1 -94.625) 2) (^ (- x2 -30.742) 2)))
	)
)

(:event validate_46
	:parameters ()
	:precondition (and
		(monitor_45)
		(<= 45.995 running_time) ; t_46 - 0.05
		(> 46.005 running_time) ; t_46 + 0.05
		(< (+ (^ (- x1 -102.713) 2) (^ (- x2 -51.201) 2)) (^ 10 2) ) ; \phi_46
	)
	:effect (and
		(not (monitor_45))
		(monitor_46)
		(increase (roughness) (+ (^ (- x1 -102.713) 2) (^ (- x2 -51.201) 2)))
	)
)

(:event validate_47
	:parameters ()
	:precondition (and
		(monitor_46)
		(<= 46.995 running_time) ; t_47 - 0.05
		(> 47.005 running_time) ; t_47 + 0.05
		(< (+ (^ (- x1 -111.122) 2) (^ (- x2 -71.531) 2)) (^ 10 2) ) ; \phi_47
	)
	:effect (and
		(not (monitor_46))
		(monitor_47)
		(increase (roughness) (+ (^ (- x1 -111.122) 2) (^ (- x2 -71.531) 2)))
	)
)

(:event validate_48
	:parameters ()
	:precondition (and
		(monitor_47)
		(<= 47.995 running_time) ; t_48 - 0.05
		(> 48.005 running_time) ; t_48 + 0.05
		(< (+ (^ (- x1 -119.916) 2) (^ (- x2 -91.696) 2)) (^ 10 2) ) ; \phi_48
	)
	:effect (and
		(not (monitor_47))
		(monitor_48)
		(increase (roughness) (+ (^ (- x1 -119.916) 2) (^ (- x2 -91.696) 2)))
	)
)

(:event validate_49
	:parameters ()
	:precondition (and
		(monitor_48)
		(<= 48.995 running_time) ; t_49 - 0.05
		(> 49.005 running_time) ; t_49 + 0.05
		(< (+ (^ (- x1 -129.71) 2) (^ (- x2 -111.37) 2)) (^ 10 2) ) ; \phi_49
	)
	:effect (and
		(not (monitor_48))
		(monitor_49)
		(increase (roughness) (+ (^ (- x1 -129.71) 2) (^ (- x2 -111.37) 2)))
	)
)

(:event validate_50
	:parameters ()
	:precondition (and
		(monitor_49)
		(<= 49.995 running_time) ; t_50 - 0.05
		(> 50.005 running_time) ; t_50 + 0.05
		(< (+ (^ (- x1 -144.31) 2) (^ (- x2 -127.707) 2)) (^ 10 2) ) ; \phi_50
	)
	:effect (and
		(not (monitor_49))
		(monitor_50)
		(increase (roughness) (+ (^ (- x1 -144.31) 2) (^ (- x2 -127.707) 2)))
	)
)

(:constraint roughness_bound
	:parameters ()
	:condition (and
		(< roughness max_roughness)
	)
)

)