(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 - observation
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
	(= (x1_obs o17) -11.063)
	(= (x4_obs o17) -4.632)
	(= (x7_obs o17) -0.921)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -10.407)
	(= (x4_obs o18) -6.717)
	(= (x7_obs o18) 0.461)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -9.848)
	(= (x4_obs o19) -8.302)
	(= (x7_obs o19) 1.33)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -9.49)
	(= (x4_obs o20) -9.209)
	(= (x7_obs o20) 1.617)

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -9.27)
	(= (x4_obs o21) -9.749)
	(= (x7_obs o21) 1.666)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -9.135)
	(= (x4_obs o22) -10.106)
	(= (x7_obs o22) 1.673)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -9.05)
	(= (x4_obs o23) -10.352)
	(= (x7_obs o23) 1.691)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -8.998)
	(= (x4_obs o24) -10.522)
	(= (x7_obs o24) 1.717)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -8.965)
	(= (x4_obs o25) -10.637)
	(= (x7_obs o25) 1.743)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -8.945)
	(= (x4_obs o26) -10.713)
	(= (x7_obs o26) 1.762)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -8.932)
	(= (x4_obs o27) -10.763)
	(= (x7_obs o27) 1.775)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -8.924)
	(= (x4_obs o28) -10.796)
	(= (x7_obs o28) 1.782)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -8.919)
	(= (x4_obs o29) -10.818)
	(= (x7_obs o29) 1.785)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -9.516)
	(= (x4_obs o30) -9.636)
	(= (x7_obs o30) 1.196)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.023)
	(= (x4_obs o31) -6.406)
	(= (x7_obs o31) -0.474)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.967)
	(= (x4_obs o32) -4.046)
	(= (x7_obs o32) -1.732)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -12.094)
	(= (x4_obs o33) -3.334)
	(= (x7_obs o33) -2.074)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.858)
	(= (x4_obs o34) -3.516)
	(= (x7_obs o34) -1.878)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.63)
	(= (x4_obs o35) -3.817)
	(= (x7_obs o35) -1.609)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.516)
	(= (x4_obs o36) -3.942)
	(= (x7_obs o36) -1.472)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.22)
	(= (x4_obs o37) -4.733)
	(= (x7_obs o37) -0.907)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -10.516)
	(= (x4_obs o38) -6.758)
	(= (x7_obs o38) 0.428)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -9.918)
	(= (x4_obs o39) -8.311)
	(= (x7_obs o39) 1.27)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -9.533)
	(= (x4_obs o40) -9.199)
	(= (x7_obs o40) 1.552)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)