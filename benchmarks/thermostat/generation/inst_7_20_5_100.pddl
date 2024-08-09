(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 21.7)
	(on)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 21.7)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 21.51)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 21.31)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 21.11)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 20.91)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 20.71)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.51)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 20.31)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 20.11)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 19.91)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 19.71)

	(= (time_obs o11) 11.0)
	(= (x_obs o11) 19.51)

	(= (time_obs o12) 12.0)
	(= (x_obs o12) 19.31)

	(= (time_obs o13) 13.0)
	(= (x_obs o13) 19.11)

	(= (time_obs o14) 14.0)
	(= (x_obs o14) 18.91)

	(= (time_obs o15) 15.0)
	(= (x_obs o15) 18.71)

	(= (time_obs o16) 16.0)
	(= (x_obs o16) 18.95)

	(= (time_obs o17) 17.0)
	(= (x_obs o17) 19.75)

	(= (time_obs o18) 18.0)
	(= (x_obs o18) 20.55)

	(= (time_obs o19) 19.0)
	(= (x_obs o19) 21.35)

	(= (time_obs o20) 20.0)
	(= (x_obs o20) 21.59)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
