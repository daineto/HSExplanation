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

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -11.477)
	(= (x4_obs o21) -3.921)
	(= (x7_obs o21) -1.458)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -11.465)
	(= (x4_obs o22) -3.864)
	(= (x7_obs o22) -1.494)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -11.451)
	(= (x4_obs o23) -3.827)
	(= (x7_obs o23) -1.523)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -11.435)
	(= (x4_obs o24) -3.816)
	(= (x7_obs o24) -1.531)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -11.42)
	(= (x4_obs o25) -3.818)
	(= (x7_obs o25) -1.526)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.41)
	(= (x4_obs o26) -3.82)
	(= (x7_obs o26) -1.519)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -11.404)
	(= (x4_obs o27) -3.82)
	(= (x7_obs o27) -1.515)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -11.4)
	(= (x4_obs o28) -3.818)
	(= (x7_obs o28) -1.514)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.397)
	(= (x4_obs o29) -3.816)
	(= (x7_obs o29) -1.514)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.395)
	(= (x4_obs o30) -3.814)
	(= (x7_obs o30) -1.514)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.393)
	(= (x4_obs o31) -3.814)
	(= (x7_obs o31) -1.514)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.392)
	(= (x4_obs o32) -3.813)
	(= (x7_obs o32) -1.514)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.391)
	(= (x4_obs o33) -3.813)
	(= (x7_obs o33) -1.514)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.137)
	(= (x4_obs o34) -4.619)
	(= (x7_obs o34) -0.958)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -10.461)
	(= (x4_obs o35) -6.69)
	(= (x7_obs o35) 0.417)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -9.883)
	(= (x4_obs o36) -8.279)
	(= (x7_obs o36) 1.293)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -9.511)
	(= (x4_obs o37) -9.19)
	(= (x7_obs o37) 1.588)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -9.283)
	(= (x4_obs o38) -9.732)
	(= (x7_obs o38) 1.644)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -9.143)
	(= (x4_obs o39) -10.092)
	(= (x7_obs o39) 1.658)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -9.056)
	(= (x4_obs o40) -10.342)
	(= (x7_obs o40) 1.681)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -9.001)
	(= (x4_obs o41) -10.514)
	(= (x7_obs o41) 1.712)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -8.967)
	(= (x4_obs o42) -10.631)
	(= (x7_obs o42) 1.74)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -8.946)
	(= (x4_obs o43) -10.709)
	(= (x7_obs o43) 1.761)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -8.933)
	(= (x4_obs o44) -10.761)
	(= (x7_obs o44) 1.774)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -8.924)
	(= (x4_obs o45) -10.795)
	(= (x7_obs o45) 1.781)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -9.492)
	(= (x4_obs o46) -9.676)
	(= (x7_obs o46) 1.222)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -10.994)
	(= (x4_obs o47) -6.465)
	(= (x7_obs o47) -0.439)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -11.954)
	(= (x4_obs o48) -4.075)
	(= (x7_obs o48) -1.715)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -12.094)
	(= (x4_obs o49) -3.337)
	(= (x7_obs o49) -2.074)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -11.862)
	(= (x4_obs o50) -3.51)
	(= (x7_obs o50) -1.884)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
