(define (problem problem_name) (:domain platoon)

(:init
	; HS initial state
	(= (x1) 0)
	(= (x2) 0)
	(= (theta) 4.308753274170515)
	(= (v) 24.0)
	(flying-straight)
	; monitor initial state
	(= (running_time) 0)
	(monitor_0)
	(= (roughness) 0)
	(= (max_roughness) 130.6944)

)
(:goal
	(and
		(monitor_30)
		(< roughness max_roughness)
	)
)
)