(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 0.11216725782608199)
	(= (v) 22.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)
	(= (roughness) 0)
	(= (max_roughness) 37.168200000000006)

)
(:goal
	(and
		(monitor_10)
		(< roughness max_roughness)
	)
)
)