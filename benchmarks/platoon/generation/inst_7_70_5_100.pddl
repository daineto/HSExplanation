(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 - observation
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

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -10.592)
	(= (x4_obs o31) -6.638)
	(= (x7_obs o31) 0.299)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -9.963)
	(= (x4_obs o32) -8.201)
	(= (x7_obs o32) 1.169)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -9.562)
	(= (x4_obs o33) -9.111)
	(= (x7_obs o33) 1.484)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -9.315)
	(= (x4_obs o34) -9.668)
	(= (x7_obs o34) 1.573)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -9.163)
	(= (x4_obs o35) -10.044)
	(= (x7_obs o35) 1.617)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -9.068)
	(= (x4_obs o36) -10.308)
	(= (x7_obs o36) 1.66)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -9.009)
	(= (x4_obs o37) -10.49)
	(= (x7_obs o37) 1.702)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -8.972)
	(= (x4_obs o38) -10.615)
	(= (x7_obs o38) 1.736)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -8.949)
	(= (x4_obs o39) -10.698)
	(= (x7_obs o39) 1.76)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -9.502)
	(= (x4_obs o40) -9.62)
	(= (x7_obs o40) 1.212)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -10.989)
	(= (x4_obs o41) -6.447)
	(= (x7_obs o41) -0.438)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -11.942)
	(= (x4_obs o42) -4.076)
	(= (x7_obs o42) -1.71)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -12.083)
	(= (x4_obs o43) -3.341)
	(= (x7_obs o43) -2.07)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -11.855)
	(= (x4_obs o44) -3.51)
	(= (x7_obs o44) -1.883)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -11.628)
	(= (x4_obs o45) -3.81)
	(= (x7_obs o45) -1.613)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -11.515)
	(= (x4_obs o46) -3.939)
	(= (x7_obs o46) -1.474)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -11.479)
	(= (x4_obs o47) -3.923)
	(= (x7_obs o47) -1.459)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -11.467)
	(= (x4_obs o48) -3.866)
	(= (x7_obs o48) -1.494)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -11.453)
	(= (x4_obs o49) -3.828)
	(= (x7_obs o49) -1.523)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -11.436)
	(= (x4_obs o50) -3.817)
	(= (x7_obs o50) -1.531)

	(= (time_obs o51) 51.0)
	(= (x1_obs o51) -11.421)
	(= (x4_obs o51) -3.818)
	(= (x7_obs o51) -1.527)

	(= (time_obs o52) 52.0)
	(= (x1_obs o52) -11.411)
	(= (x4_obs o52) -3.82)
	(= (x7_obs o52) -1.52)

	(= (time_obs o53) 53.0)
	(= (x1_obs o53) -11.404)
	(= (x4_obs o53) -3.82)
	(= (x7_obs o53) -1.515)

	(= (time_obs o54) 54.0)
	(= (x1_obs o54) -11.158)
	(= (x4_obs o54) -4.589)
	(= (x7_obs o54) -0.983)

	(= (time_obs o55) 55.0)
	(= (x1_obs o55) -10.481)
	(= (x4_obs o55) -6.653)
	(= (x7_obs o55) 0.391)

	(= (time_obs o56) 56.0)
	(= (x1_obs o56) -9.896)
	(= (x4_obs o56) -8.256)
	(= (x7_obs o56) 1.28)

	(= (time_obs o57) 57.0)
	(= (x1_obs o57) -9.519)
	(= (x4_obs o57) -9.176)
	(= (x7_obs o57) 1.582)

	(= (time_obs o58) 58.0)
	(= (x1_obs o58) -9.288)
	(= (x4_obs o58) -9.722)
	(= (x7_obs o58) 1.641)

	(= (time_obs o59) 59.0)
	(= (x1_obs o59) -9.146)
	(= (x4_obs o59) -10.085)
	(= (x7_obs o59) 1.656)

	(= (time_obs o60) 60.0)
	(= (x1_obs o60) -9.057)
	(= (x4_obs o60) -10.336)
	(= (x7_obs o60) 1.679)

	(= (time_obs o61) 61.0)
	(= (x1_obs o61) -9.002)
	(= (x4_obs o61) -10.51)
	(= (x7_obs o61) 1.711)

	(= (time_obs o62) 62.0)
	(= (x1_obs o62) -8.968)
	(= (x4_obs o62) -10.628)
	(= (x7_obs o62) 1.739)

	(= (time_obs o63) 63.0)
	(= (x1_obs o63) -8.946)
	(= (x4_obs o63) -10.707)
	(= (x7_obs o63) 1.761)

	(= (time_obs o64) 64.0)
	(= (x1_obs o64) -8.933)
	(= (x4_obs o64) -10.76)
	(= (x7_obs o64) 1.774)

	(= (time_obs o65) 65.0)
	(= (x1_obs o65) -9.469)
	(= (x4_obs o65) -9.709)
	(= (x7_obs o65) 1.245)

	(= (time_obs o66) 66.0)
	(= (x1_obs o66) -10.964)
	(= (x4_obs o66) -6.522)
	(= (x7_obs o66) -0.405)

	(= (time_obs o67) 67.0)
	(= (x1_obs o67) -11.939)
	(= (x4_obs o67) -4.106)
	(= (x7_obs o67) -1.697)

	(= (time_obs o68) 68.0)
	(= (x1_obs o68) -12.093)
	(= (x4_obs o68) -3.341)
	(= (x7_obs o68) -2.072)

	(= (time_obs o69) 69.0)
	(= (x1_obs o69) -11.864)
	(= (x4_obs o69) -3.503)
	(= (x7_obs o69) -1.889)

	(= (time_obs o70) 70.0)
	(= (x1_obs o70) -11.634)
	(= (x4_obs o70) -3.807)
	(= (x7_obs o70) -1.617)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)