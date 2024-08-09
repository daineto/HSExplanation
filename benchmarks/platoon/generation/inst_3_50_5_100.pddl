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
	(= (x1_obs o16) -11.04)
	(= (x4_obs o16) -4.624)
	(= (x7_obs o16) -0.916)

	(= (time_obs o17) 17.0)
	(= (x1_obs o17) -10.392)
	(= (x4_obs o17) -6.713)
	(= (x7_obs o17) 0.468)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -9.839)
	(= (x4_obs o18) -8.302)
	(= (x7_obs o18) 1.339)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -9.484)
	(= (x4_obs o19) -9.212)
	(= (x7_obs o19) 1.626)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -9.266)
	(= (x4_obs o20) -9.752)
	(= (x7_obs o20) 1.674)

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -9.673)
	(= (x4_obs o21) -8.999)
	(= (x7_obs o21) 1.113)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -10.978)
	(= (x4_obs o22) -6.188)
	(= (x7_obs o22) -0.487)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -11.837)
	(= (x4_obs o23) -4.048)
	(= (x7_obs o23) -1.703)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -11.978)
	(= (x4_obs o24) -3.379)
	(= (x7_obs o24) -2.045)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -11.786)
	(= (x4_obs o25) -3.533)
	(= (x7_obs o25) -1.864)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.591)
	(= (x4_obs o26) -3.807)
	(= (x7_obs o26) -1.606)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -11.494)
	(= (x4_obs o27) -3.925)
	(= (x7_obs o27) -1.473)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -11.465)
	(= (x4_obs o28) -3.911)
	(= (x7_obs o28) -1.459)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.455)
	(= (x4_obs o29) -3.859)
	(= (x7_obs o29) -1.493)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.443)
	(= (x4_obs o30) -3.825)
	(= (x7_obs o30) -1.521)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.429)
	(= (x4_obs o31) -3.815)
	(= (x7_obs o31) -1.529)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.416)
	(= (x4_obs o32) -3.817)
	(= (x7_obs o32) -1.526)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.407)
	(= (x4_obs o33) -3.819)
	(= (x7_obs o33) -1.519)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.402)
	(= (x4_obs o34) -3.819)
	(= (x7_obs o34) -1.515)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.399)
	(= (x4_obs o35) -3.817)
	(= (x7_obs o35) -1.514)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.396)
	(= (x4_obs o36) -3.815)
	(= (x7_obs o36) -1.514)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.394)
	(= (x4_obs o37) -3.814)
	(= (x7_obs o37) -1.514)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.393)
	(= (x4_obs o38) -3.813)
	(= (x7_obs o38) -1.514)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -11.392)
	(= (x4_obs o39) -3.813)
	(= (x7_obs o39) -1.514)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -11.137)
	(= (x4_obs o40) -4.619)
	(= (x7_obs o40) -0.958)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -10.461)
	(= (x4_obs o41) -6.69)
	(= (x7_obs o41) 0.417)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.883)
	(= (x4_obs o42) -8.279)
	(= (x7_obs o42) 1.293)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.511)
	(= (x4_obs o43) -9.19)
	(= (x7_obs o43) 1.588)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.283)
	(= (x4_obs o44) -9.732)
	(= (x7_obs o44) 1.644)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -9.143)
	(= (x4_obs o45) -10.092)
	(= (x7_obs o45) 1.658)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -9.056)
	(= (x4_obs o46) -10.341)
	(= (x7_obs o46) 1.681)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -9.001)
	(= (x4_obs o47) -10.514)
	(= (x7_obs o47) 1.712)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -8.967)
	(= (x4_obs o48) -10.631)
	(= (x7_obs o48) 1.74)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -8.946)
	(= (x4_obs o49) -10.709)
	(= (x7_obs o49) 1.761)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -8.933)
	(= (x4_obs o50) -10.761)
	(= (x7_obs o50) 1.774)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
