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
	(= (roughness) 0)
	(= (max_roughness) 2.8683)

)
(:goal
	(and
		(monitor_4)
		(< roughness max_roughness)
	)
)
)
