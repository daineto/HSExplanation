(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 18.2)
	(off)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 18.2)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 19.0)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 19.8)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 20.6)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 21.03)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 20.83)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.63)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 20.43)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 20.23)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
