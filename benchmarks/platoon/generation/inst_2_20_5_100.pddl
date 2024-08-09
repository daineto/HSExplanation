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
	(= (x1_obs o6) -9.02)
	(= (x4_obs o6) -3.888)
	(= (x7_obs o6) -0.557)

	(= (time_obs o7) 7.0)
	(= (x1_obs o7) -9.081)
	(= (x4_obs o7) -6.314)
	(= (x7_obs o7) 1.017)

	(= (time_obs o8) 8.0)
	(= (x1_obs o8) -9.022)
	(= (x4_obs o8) -8.254)
	(= (x7_obs o8) 2.107)

	(= (time_obs o9) 9.0)
	(= (x1_obs o9) -8.976)
	(= (x4_obs o9) -9.394)
	(= (x7_obs o9) 2.433)

	(= (time_obs o10) 10.0)
	(= (x1_obs o10) -8.951)
	(= (x4_obs o10) -10.02)
	(= (x7_obs o10) 2.347)

	(= (time_obs o11) 11.0)
	(= (x1_obs o11) -8.936)
	(= (x4_obs o11) -10.37)
	(= (x7_obs o11) 2.151)

	(= (time_obs o12) 12.0)
	(= (x1_obs o12) -8.926)
	(= (x4_obs o12) -10.572)
	(= (x7_obs o12) 1.984)

	(= (time_obs o13) 13.0)
	(= (x1_obs o13) -8.92)
	(= (x4_obs o13) -10.689)
	(= (x7_obs o13) 1.877)

	(= (time_obs o14) 14.0)
	(= (x1_obs o14) -9.507)
	(= (x4_obs o14) -9.569)
	(= (x7_obs o14) 1.227)

	(= (time_obs o15) 15.0)
	(= (x1_obs o15) -10.997)
	(= (x4_obs o15) -6.383)
	(= (x7_obs o15) -0.473)

	(= (time_obs o16) 16.0)
	(= (x1_obs o16) -11.936)
	(= (x4_obs o16) -4.042)
	(= (x7_obs o16) -1.74)

	(= (time_obs o17) 17.0)
	(= (x1_obs o17) -12.071)
	(= (x4_obs o17) -3.336)
	(= (x7_obs o17) -2.081)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -11.843)
	(= (x4_obs o18) -3.516)
	(= (x7_obs o18) -1.88)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -11.621)
	(= (x4_obs o19) -3.815)
	(= (x7_obs o19) -1.607)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -11.511)
	(= (x4_obs o20) -3.94)
	(= (x7_obs o20) -1.47)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
