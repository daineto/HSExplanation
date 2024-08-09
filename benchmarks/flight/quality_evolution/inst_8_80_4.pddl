(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 3.5995744682071624)
	(= (v) 23.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)
	(= (roughness) 0)
	(= (max_roughness) 2110.3839000000003)

)
(:goal
	(and
		(monitor_80)
		(< roughness max_roughness)
	)
)
)
