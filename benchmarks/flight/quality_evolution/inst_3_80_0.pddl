(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 4.463610951827797)
	(= (v) 22.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)
	(= (roughness) 0)
	(= (max_roughness) 100000000)

)
(:goal
	(and
		(monitor_80)
		(< roughness max_roughness)
	)
)
)