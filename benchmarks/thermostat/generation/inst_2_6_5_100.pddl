(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 19.5)
	(off)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 19.5)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 19.3)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 19.1)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 18.9)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 18.7)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 19.5)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.3)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
