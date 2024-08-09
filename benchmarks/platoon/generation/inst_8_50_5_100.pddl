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
	(= (x1_obs o25) -9.549)
	(= (x4_obs o25) -9.464)
	(= (x7_obs o25) 1.16)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.007)
	(= (x4_obs o26) -6.351)
	(= (x7_obs o26) -0.475)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -11.93)
	(= (x4_obs o27) -4.048)
	(= (x7_obs o27) -1.718)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -12.063)
	(= (x4_obs o28) -3.347)
	(= (x7_obs o28) -2.062)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.838)
	(= (x4_obs o29) -3.519)
	(= (x7_obs o29) -1.873)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.619)
	(= (x4_obs o30) -3.813)
	(= (x7_obs o30) -1.608)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.51)
	(= (x4_obs o31) -3.937)
	(= (x7_obs o31) -1.473)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.476)
	(= (x4_obs o32) -3.92)
	(= (x7_obs o32) -1.46)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.464)
	(= (x4_obs o33) -3.864)
	(= (x7_obs o33) -1.494)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.451)
	(= (x4_obs o34) -3.827)
	(= (x7_obs o34) -1.523)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.434)
	(= (x4_obs o35) -3.816)
	(= (x7_obs o35) -1.531)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.42)
	(= (x4_obs o36) -3.818)
	(= (x7_obs o36) -1.526)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.41)
	(= (x4_obs o37) -3.82)
	(= (x7_obs o37) -1.519)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.404)
	(= (x4_obs o38) -3.82)
	(= (x7_obs o38) -1.515)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -11.4)
	(= (x4_obs o39) -3.818)
	(= (x7_obs o39) -1.514)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -11.143)
	(= (x4_obs o40) -4.622)
	(= (x7_obs o40) -0.958)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -10.465)
	(= (x4_obs o41) -6.691)
	(= (x7_obs o41) 0.416)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.886)
	(= (x4_obs o42) -8.28)
	(= (x7_obs o42) 1.291)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.513)
	(= (x4_obs o43) -9.189)
	(= (x7_obs o43) 1.586)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.284)
	(= (x4_obs o44) -9.731)
	(= (x7_obs o44) 1.642)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -9.144)
	(= (x4_obs o45) -10.091)
	(= (x7_obs o45) 1.657)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -9.056)
	(= (x4_obs o46) -10.341)
	(= (x7_obs o46) 1.681)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -9.001)
	(= (x4_obs o47) -10.513)
	(= (x7_obs o47) 1.712)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -9.526)
	(= (x4_obs o48) -9.511)
	(= (x7_obs o48) 1.184)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -10.98)
	(= (x4_obs o49) -6.411)
	(= (x7_obs o49) -0.442)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -11.921)
	(= (x4_obs o50) -4.078)
	(= (x7_obs o50) -1.701)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
