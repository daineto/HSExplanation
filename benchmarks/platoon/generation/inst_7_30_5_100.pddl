(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 - observation
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
	(= (x1_obs o9) -10.568)
	(= (x4_obs o9) -3.509)
	(= (x7_obs o9) -1.397)

	(= (time_obs o10) 10.0)
	(= (x1_obs o10) -10.796)
	(= (x4_obs o10) -3.591)
	(= (x7_obs o10) -1.423)

	(= (time_obs o11) 11.0)
	(= (x1_obs o11) -10.959)
	(= (x4_obs o11) -3.651)
	(= (x7_obs o11) -1.446)

	(= (time_obs o12) 12.0)
	(= (x1_obs o12) -11.077)
	(= (x4_obs o12) -3.695)
	(= (x7_obs o12) -1.465)

	(= (time_obs o13) 13.0)
	(= (x1_obs o13) -11.162)
	(= (x4_obs o13) -3.727)
	(= (x7_obs o13) -1.48)

	(= (time_obs o14) 14.0)
	(= (x1_obs o14) -11.224)
	(= (x4_obs o14) -3.751)
	(= (x7_obs o14) -1.49)

	(= (time_obs o15) 15.0)
	(= (x1_obs o15) -11.269)
	(= (x4_obs o15) -3.768)
	(= (x7_obs o15) -1.496)

	(= (time_obs o16) 16.0)
	(= (x1_obs o16) -11.302)
	(= (x4_obs o16) -3.78)
	(= (x7_obs o16) -1.501)

	(= (time_obs o17) 17.0)
	(= (x1_obs o17) -11.326)
	(= (x4_obs o17) -3.789)
	(= (x7_obs o17) -1.504)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -11.079)
	(= (x4_obs o18) -4.639)
	(= (x7_obs o18) -0.924)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -10.417)
	(= (x4_obs o19) -6.721)
	(= (x7_obs o19) 0.456)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -9.855)
	(= (x4_obs o20) -8.302)
	(= (x7_obs o20) 1.323)

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -9.494)
	(= (x4_obs o21) -9.208)
	(= (x7_obs o21) 1.61)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -9.273)
	(= (x4_obs o22) -9.747)
	(= (x7_obs o22) 1.66)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -9.136)
	(= (x4_obs o23) -10.104)
	(= (x7_obs o23) 1.669)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -9.051)
	(= (x4_obs o24) -10.351)
	(= (x7_obs o24) 1.689)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -9.573)
	(= (x4_obs o25) -9.362)
	(= (x7_obs o25) 1.137)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.0)
	(= (x4_obs o26) -6.317)
	(= (x7_obs o26) -0.481)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -11.91)
	(= (x4_obs o27) -4.05)
	(= (x7_obs o27) -1.713)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -12.045)
	(= (x4_obs o28) -3.355)
	(= (x7_obs o28) -2.056)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.828)
	(= (x4_obs o29) -3.522)
	(= (x7_obs o29) -1.87)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.369)
	(= (x4_obs o30) -4.557)
	(= (x7_obs o30) -1.104)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
