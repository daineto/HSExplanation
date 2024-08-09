(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 20.6)
	(on)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 20.6)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 21.4)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 21.83)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 21.63)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 21.43)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 21.23)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 21.03)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 20.83)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 20.63)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 20.43)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 20.23)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
