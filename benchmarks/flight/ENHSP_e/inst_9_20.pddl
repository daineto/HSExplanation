(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 3.056836066788463)
	(= (v) 16.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)

)
(:goal
	(and
		(monitor_20)
	)
)
)
