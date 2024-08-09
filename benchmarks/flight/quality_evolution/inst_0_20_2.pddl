(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 4.315732101484229)
	(= (v) 20.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)
	(= (roughness) 0)
	(= (max_roughness) 308.4561)

)
(:goal
	(and
		(monitor_20)
		(< roughness max_roughness)
	)
)
)
