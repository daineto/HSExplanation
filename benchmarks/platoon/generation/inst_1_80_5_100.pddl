(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 o71 o72 o73 o74 o75 o76 o77 o78 o79 o80 - observation
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
	(= (x1_obs o18) -11.343)
	(= (x4_obs o18) -3.795)
	(= (x7_obs o18) -1.507)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -11.356)
	(= (x4_obs o19) -3.8)
	(= (x7_obs o19) -1.509)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -11.365)
	(= (x4_obs o20) -3.803)
	(= (x7_obs o20) -1.51)

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -11.107)
	(= (x4_obs o21) -4.649)
	(= (x7_obs o21) -0.929)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -10.435)
	(= (x4_obs o22) -6.726)
	(= (x7_obs o22) 0.448)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -9.866)
	(= (x4_obs o23) -8.303)
	(= (x7_obs o23) 1.311)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -9.501)
	(= (x4_obs o24) -9.205)
	(= (x7_obs o24) 1.598)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -9.277)
	(= (x4_obs o25) -9.743)
	(= (x7_obs o25) 1.651)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -9.139)
	(= (x4_obs o26) -10.1)
	(= (x7_obs o26) 1.663)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -9.053)
	(= (x4_obs o27) -10.348)
	(= (x7_obs o27) 1.685)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -8.999)
	(= (x4_obs o28) -10.518)
	(= (x7_obs o28) 1.714)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -8.966)
	(= (x4_obs o29) -10.634)
	(= (x7_obs o29) 1.741)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -8.945)
	(= (x4_obs o30) -10.711)
	(= (x7_obs o30) 1.762)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -8.932)
	(= (x4_obs o31) -10.762)
	(= (x7_obs o31) 1.774)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -9.521)
	(= (x4_obs o32) -9.604)
	(= (x7_obs o32) 1.192)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.02)
	(= (x4_obs o33) -6.396)
	(= (x7_obs o33) -0.472)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.959)
	(= (x4_obs o34) -4.046)
	(= (x7_obs o34) -1.729)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -12.087)
	(= (x4_obs o35) -3.336)
	(= (x7_obs o35) -2.072)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.854)
	(= (x4_obs o36) -3.516)
	(= (x7_obs o36) -1.878)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.627)
	(= (x4_obs o37) -3.816)
	(= (x7_obs o37) -1.609)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.515)
	(= (x4_obs o38) -3.941)
	(= (x7_obs o38) -1.472)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -11.48)
	(= (x4_obs o39) -3.923)
	(= (x7_obs o39) -1.46)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -11.467)
	(= (x4_obs o40) -3.865)
	(= (x7_obs o40) -1.495)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -11.453)
	(= (x4_obs o41) -3.828)
	(= (x7_obs o41) -1.523)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -11.436)
	(= (x4_obs o42) -3.817)
	(= (x7_obs o42) -1.531)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -11.421)
	(= (x4_obs o43) -3.818)
	(= (x7_obs o43) -1.526)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -11.411)
	(= (x4_obs o44) -3.821)
	(= (x7_obs o44) -1.519)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -11.404)
	(= (x4_obs o45) -3.82)
	(= (x7_obs o45) -1.515)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -11.401)
	(= (x4_obs o46) -3.818)
	(= (x7_obs o46) -1.514)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -11.398)
	(= (x4_obs o47) -3.816)
	(= (x7_obs o47) -1.514)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -11.395)
	(= (x4_obs o48) -3.814)
	(= (x7_obs o48) -1.514)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -11.394)
	(= (x4_obs o49) -3.814)
	(= (x7_obs o49) -1.514)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -11.138)
	(= (x4_obs o50) -4.62)
	(= (x7_obs o50) -0.959)

	(= (time_obs o51) 51.0)
	(= (x1_obs o51) -10.462)
	(= (x4_obs o51) -6.69)
	(= (x7_obs o51) 0.417)

	(= (time_obs o52) 52.0)
	(= (x1_obs o52) -9.884)
	(= (x4_obs o52) -8.279)
	(= (x7_obs o52) 1.293)

	(= (time_obs o53) 53.0)
	(= (x1_obs o53) -9.511)
	(= (x4_obs o53) -9.189)
	(= (x7_obs o53) 1.587)

	(= (time_obs o54) 54.0)
	(= (x1_obs o54) -9.284)
	(= (x4_obs o54) -9.732)
	(= (x7_obs o54) 1.644)

	(= (time_obs o55) 55.0)
	(= (x1_obs o55) -9.143)
	(= (x4_obs o55) -10.092)
	(= (x7_obs o55) 1.658)

	(= (time_obs o56) 56.0)
	(= (x1_obs o56) -9.056)
	(= (x4_obs o56) -10.341)
	(= (x7_obs o56) 1.681)

	(= (time_obs o57) 57.0)
	(= (x1_obs o57) -9.001)
	(= (x4_obs o57) -10.514)
	(= (x7_obs o57) 1.712)

	(= (time_obs o58) 58.0)
	(= (x1_obs o58) -8.967)
	(= (x4_obs o58) -10.631)
	(= (x7_obs o58) 1.74)

	(= (time_obs o59) 59.0)
	(= (x1_obs o59) -8.946)
	(= (x4_obs o59) -10.709)
	(= (x7_obs o59) 1.761)

	(= (time_obs o60) 60.0)
	(= (x1_obs o60) -8.933)
	(= (x4_obs o60) -10.761)
	(= (x7_obs o60) 1.774)

	(= (time_obs o61) 61.0)
	(= (x1_obs o61) -8.924)
	(= (x4_obs o61) -10.795)
	(= (x7_obs o61) 1.781)

	(= (time_obs o62) 62.0)
	(= (x1_obs o62) -8.919)
	(= (x4_obs o62) -10.817)
	(= (x7_obs o62) 1.785)

	(= (time_obs o63) 63.0)
	(= (x1_obs o63) -8.916)
	(= (x4_obs o63) -10.831)
	(= (x7_obs o63) 1.786)

	(= (time_obs o64) 64.0)
	(= (x1_obs o64) -8.914)
	(= (x4_obs o64) -10.84)
	(= (x7_obs o64) 1.787)

	(= (time_obs o65) 65.0)
	(= (x1_obs o65) -9.488)
	(= (x4_obs o65) -9.703)
	(= (x7_obs o65) 1.223)

	(= (time_obs o66) 66.0)
	(= (x1_obs o66) -10.997)
	(= (x4_obs o66) -6.474)
	(= (x7_obs o66) -0.441)

	(= (time_obs o67) 67.0)
	(= (x1_obs o67) -11.96)
	(= (x4_obs o67) -4.075)
	(= (x7_obs o67) -1.717)

	(= (time_obs o68) 68.0)
	(= (x1_obs o68) -12.099)
	(= (x4_obs o68) -3.336)
	(= (x7_obs o68) -2.075)

	(= (time_obs o69) 69.0)
	(= (x1_obs o69) -11.865)
	(= (x4_obs o69) -3.509)
	(= (x7_obs o69) -1.884)

	(= (time_obs o70) 70.0)
	(= (x1_obs o70) -11.634)
	(= (x4_obs o70) -3.812)
	(= (x7_obs o70) -1.613)

	(= (time_obs o71) 71.0)
	(= (x1_obs o71) -11.518)
	(= (x4_obs o71) -3.942)
	(= (x7_obs o71) -1.473)

	(= (time_obs o72) 72.0)
	(= (x1_obs o72) -11.481)
	(= (x4_obs o72) -3.925)
	(= (x7_obs o72) -1.459)

	(= (time_obs o73) 73.0)
	(= (x1_obs o73) -11.469)
	(= (x4_obs o73) -3.867)
	(= (x7_obs o73) -1.494)

	(= (time_obs o74) 74.0)
	(= (x1_obs o74) -11.454)
	(= (x4_obs o74) -3.828)
	(= (x7_obs o74) -1.523)

	(= (time_obs o75) 75.0)
	(= (x1_obs o75) -11.437)
	(= (x4_obs o75) -3.817)
	(= (x7_obs o75) -1.531)

	(= (time_obs o76) 76.0)
	(= (x1_obs o76) -11.422)
	(= (x4_obs o76) -3.818)
	(= (x7_obs o76) -1.527)

	(= (time_obs o77) 77.0)
	(= (x1_obs o77) -11.411)
	(= (x4_obs o77) -3.821)
	(= (x7_obs o77) -1.52)

	(= (time_obs o78) 78.0)
	(= (x1_obs o78) -11.405)
	(= (x4_obs o78) -3.82)
	(= (x7_obs o78) -1.515)

	(= (time_obs o79) 79.0)
	(= (x1_obs o79) -11.401)
	(= (x4_obs o79) -3.818)
	(= (x7_obs o79) -1.514)

	(= (time_obs o80) 80.0)
	(= (x1_obs o80) -11.398)
	(= (x4_obs o80) -3.816)
	(= (x7_obs o80) -1.514)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)