(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 0.3110167187965426)
	(= (v) 24.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)

)
(:goal
	(and
		(monitor_10)
	)
)
)