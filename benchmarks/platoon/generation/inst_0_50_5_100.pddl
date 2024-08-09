(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 - observation
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

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -8.916)
	(= (x4_obs o21) -10.828)
	(= (x7_obs o21) 1.786)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -8.914)
	(= (x4_obs o22) -10.838)
	(= (x7_obs o22) 1.787)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -8.913)
	(= (x4_obs o23) -10.845)
	(= (x7_obs o23) 1.787)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -9.514)
	(= (x4_obs o24) -9.651)
	(= (x7_obs o24) 1.196)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -11.025)
	(= (x4_obs o25) -6.412)
	(= (x7_obs o25) -0.475)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.971)
	(= (x4_obs o26) -4.046)
	(= (x7_obs o26) -1.733)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -12.097)
	(= (x4_obs o27) -3.334)
	(= (x7_obs o27) -2.075)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -11.86)
	(= (x4_obs o28) -3.516)
	(= (x7_obs o28) -1.879)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.631)
	(= (x4_obs o29) -3.817)
	(= (x7_obs o29) -1.609)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.517)
	(= (x4_obs o30) -3.943)
	(= (x7_obs o30) -1.472)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.481)
	(= (x4_obs o31) -3.924)
	(= (x7_obs o31) -1.46)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.468)
	(= (x4_obs o32) -3.866)
	(= (x7_obs o32) -1.495)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.454)
	(= (x4_obs o33) -3.828)
	(= (x7_obs o33) -1.523)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.437)
	(= (x4_obs o34) -3.817)
	(= (x7_obs o34) -1.531)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.421)
	(= (x4_obs o35) -3.818)
	(= (x7_obs o35) -1.527)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.411)
	(= (x4_obs o36) -3.821)
	(= (x7_obs o36) -1.519)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.405)
	(= (x4_obs o37) -3.82)
	(= (x7_obs o37) -1.515)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.147)
	(= (x4_obs o38) -4.625)
	(= (x7_obs o38) -0.958)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -10.467)
	(= (x4_obs o39) -6.693)
	(= (x7_obs o39) 0.416)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -9.887)
	(= (x4_obs o40) -8.28)
	(= (x7_obs o40) 1.29)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -9.513)
	(= (x4_obs o41) -9.189)
	(= (x7_obs o41) 1.584)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.285)
	(= (x4_obs o42) -9.731)
	(= (x7_obs o42) 1.641)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.144)
	(= (x4_obs o43) -10.091)
	(= (x7_obs o43) 1.656)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.056)
	(= (x4_obs o44) -10.341)
	(= (x7_obs o44) 1.68)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -9.001)
	(= (x4_obs o45) -10.513)
	(= (x7_obs o45) 1.711)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -8.967)
	(= (x4_obs o46) -10.63)
	(= (x7_obs o46) 1.74)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -8.946)
	(= (x4_obs o47) -10.709)
	(= (x7_obs o47) 1.761)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -8.933)
	(= (x4_obs o48) -10.761)
	(= (x7_obs o48) 1.774)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -8.924)
	(= (x4_obs o49) -10.794)
	(= (x7_obs o49) 1.781)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -8.919)
	(= (x4_obs o50) -10.817)
	(= (x7_obs o50) 1.785)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
