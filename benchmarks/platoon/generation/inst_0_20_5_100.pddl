(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 - observation
)

(:init
	(= (x1) 0)
	(= (x2) 0)
	(= (x3) 0)
	(= (x4) 0)
	(= (x5) 0)
	(= (x6) 0)
	(= (x7) 0)
	(= (x8) 0)
	(= (x9) 0)
	(= (u) -4)
	(= (time) 0)
	(elf)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x1_obs o0) 0.0)
	(= (x4_obs o0) 0.0)
	(= (x7_obs o0) 0.0)

	(= (time_obs o1) 1.0)
	(= (x1_obs o1) -1.568)
	(= (x4_obs o1) -0.077)
	(= (x7_obs o1) -0.02)

	(= (time_obs o2) 2.0)
	(= (x1_obs o2) -4.139)
	(= (x4_obs o2) -0.586)
	(= (x7_obs o2) -0.168)

	(= (time_obs o3) 3.0)
	(= (x1_obs o3) -6.095)
	(= (x4_obs o3) -1.403)
	(= (x7_obs o3) -0.456)

	(= (time_obs o4) 4.0)
	(= (x1_obs o4) -7.444)
	(= (x4_obs o4) -2.162)
	(= (x7_obs o4) -0.781)

	(= (time_obs o5) 5.0)
	(= (x1_obs o5) -8.441)
	(= (x4_obs o5) -2.699)
	(= (x7_obs o5) -1.048)

	(= (time_obs o6) 6.0)
	(= (x1_obs o6) -9.214)
	(= (x4_obs o6) -3.036)
	(= (x7_obs o6) -1.221)

	(= (time_obs o7) 7.0)
	(= (x1_obs o7) -9.807)
	(= (x4_obs o7) -3.251)
	(= (x7_obs o7) -1.316)

	(= (time_obs o8) 8.0)
	(= (x1_obs o8) -10.249)
	(= (x4_obs o8) -3.4)
	(= (x7_obs o8) -1.366)

	(= (time_obs o9) 9.0)
	(= (x1_obs o9) -10.328)
	(= (x4_obs o9) -4.364)
	(= (x7_obs o9) -0.777)

	(= (time_obs o10) 10.0)
	(= (x1_obs o10) -9.933)
	(= (x4_obs o10) -6.584)
	(= (x7_obs o10) 0.695)

	(= (time_obs o11) 11.0)
	(= (x1_obs o11) -9.553)
	(= (x4_obs o11) -8.299)
	(= (x7_obs o11) 1.639)

	(= (time_obs o12) 12.0)
	(= (x1_obs o12) -9.306)
	(= (x4_obs o12) -9.286)
	(= (x7_obs o12) 1.926)

	(= (time_obs o13) 13.0)
	(= (x1_obs o13) -9.156)
	(= (x4_obs o13) -9.853)
	(= (x7_obs o13) 1.916)

	(= (time_obs o14) 14.0)
	(= (x1_obs o14) -9.063)
	(= (x4_obs o14) -10.204)
	(= (x7_obs o14) 1.845)

	(= (time_obs o15) 15.0)
	(= (x1_obs o15) -9.006)
	(= (x4_obs o15) -10.433)
	(= (x7_obs o15) 1.794)

	(= (time_obs o16) 16.0)
	(= (x1_obs o16) -8.97)
	(= (x4_obs o16) -10.583)
	(= (x7_obs o16) 1.773)

	(= (time_obs o17) 17.0)
	(= (x1_obs o17) -8.948)
	(= (x4_obs o17) -10.681)
	(= (x7_obs o17) 1.77)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -8.934)
	(= (x4_obs o18) -10.744)
	(= (x7_obs o18) 1.774)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -8.925)
	(= (x4_obs o19) -10.785)
	(= (x7_obs o19) 1.78)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -8.92)
	(= (x4_obs o20) -10.811)
	(= (x7_obs o20) 1.784)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
