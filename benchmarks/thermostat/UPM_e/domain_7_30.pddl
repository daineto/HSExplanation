(define (domain thermostat)

(:requirements :fluents :typing :time )

(:predicates
	;HS locations
	(on)
	(off)

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
)

(:functions
	;HS variables
	(x)  ;; temperature

	;monitor variables
	(running_time)  ;; time
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Continuous transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:process flow-on
	:parameters ()
	:precondition (and
		(on)
		(<= (x) 22)
	)
	:effect (and
		(increase (x) (* #t 0.8))
	)
)

(:process flow-off
	:parameters ()
	:precondition (and
		(off)
		(>= (x) 18)
	)
	:effect (and
		(increase (x) (* #t -0.2))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HS Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:action turn-on
	:parameters ()
	:precondition (and
		(off)
		(< x 19)
	)
	:effect (and
		(not (off))
		(on)
	)
)

(:action turn-off
	:parameters ()
	:precondition (and
		(on)
		(> x 21)
	)
	:effect (and
		(not (on))
		(off)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Monitor Discrete transitions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:event validate_1
	:parameters ()
	:precondition (and
		(monitor_0)
		(<= 0.95 (running_time)) ; t_1 - 0.05
		(> 1.05 (running_time)) ; t_1 + 0.05
		(<= 21.46 (x)) ; \phi_1
		(>= 21.560000000000002 (x)) ; \phi_1
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
		(<= 21.259999999999998 (x)) ; \phi_2
		(>= 21.36 (x)) ; \phi_2
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
		(<= 21.06 (x)) ; \phi_3
		(>= 21.16 (x)) ; \phi_3
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
		(<= 20.86 (x)) ; \phi_4
		(>= 20.96 (x)) ; \phi_4
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
		(<= 20.66 (x)) ; \phi_5
		(>= 20.76 (x)) ; \phi_5
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
		(<= 20.46 (x)) ; \phi_6
		(>= 20.560000000000002 (x)) ; \phi_6
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
		(<= 20.259999999999998 (x)) ; \phi_7
		(>= 20.36 (x)) ; \phi_7
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
		(<= 20.06 (x)) ; \phi_8
		(>= 20.16 (x)) ; \phi_8
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
		(<= 19.86 (x)) ; \phi_9
		(>= 19.96 (x)) ; \phi_9
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
		(<= 19.66 (x)) ; \phi_10
		(>= 19.76 (x)) ; \phi_10
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
		(<= 19.46 (x)) ; \phi_11
		(>= 19.560000000000002 (x)) ; \phi_11
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
		(<= 19.259999999999998 (x)) ; \phi_12
		(>= 19.36 (x)) ; \phi_12
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
		(<= 19.06 (x)) ; \phi_13
		(>= 19.16 (x)) ; \phi_13
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
		(<= 18.86 (x)) ; \phi_14
		(>= 18.96 (x)) ; \phi_14
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
		(<= 18.66 (x)) ; \phi_15
		(>= 18.76 (x)) ; \phi_15
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
		(<= 18.9 (x)) ; \phi_16
		(>= 19.0 (x)) ; \phi_16
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
		(<= 19.7 (x)) ; \phi_17
		(>= 19.8 (x)) ; \phi_17
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
		(<= 20.5 (x)) ; \phi_18
		(>= 20.6 (x)) ; \phi_18
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
		(<= 21.3 (x)) ; \phi_19
		(>= 21.400000000000002 (x)) ; \phi_19
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
		(<= 21.54 (x)) ; \phi_20
		(>= 21.64 (x)) ; \phi_20
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
		(<= 21.34 (x)) ; \phi_21
		(>= 21.44 (x)) ; \phi_21
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
		(<= 21.14 (x)) ; \phi_22
		(>= 21.240000000000002 (x)) ; \phi_22
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
		(<= 20.939999999999998 (x)) ; \phi_23
		(>= 21.04 (x)) ; \phi_23
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
		(<= 20.74 (x)) ; \phi_24
		(>= 20.84 (x)) ; \phi_24
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
		(<= 20.54 (x)) ; \phi_25
		(>= 20.64 (x)) ; \phi_25
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
		(<= 20.34 (x)) ; \phi_26
		(>= 20.44 (x)) ; \phi_26
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
		(<= 20.14 (x)) ; \phi_27
		(>= 20.240000000000002 (x)) ; \phi_27
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
		(<= 19.939999999999998 (x)) ; \phi_28
		(>= 20.04 (x)) ; \phi_28
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
		(<= 19.74 (x)) ; \phi_29
		(>= 19.84 (x)) ; \phi_29
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
		(<= 19.54 (x)) ; \phi_30
		(>= 19.64 (x)) ; \phi_30
	)
	:effect (and
		(not (monitor_29))
		(monitor_30)
	)
)

)