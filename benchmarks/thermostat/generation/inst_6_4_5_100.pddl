(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 19.8)
	(off)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 19.8)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 19.6)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 19.4)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 19.2)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 19.0)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
