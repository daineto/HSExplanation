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

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -9.297)
	(= (x4_obs o41) -9.731)
	(= (x7_obs o41) 1.61)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.151)
	(= (x4_obs o42) -10.086)
	(= (x7_obs o42) 1.633)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.061)
	(= (x4_obs o43) -10.336)
	(= (x7_obs o43) 1.666)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.004)
	(= (x4_obs o44) -10.509)
	(= (x7_obs o44) 1.703)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -8.969)
	(= (x4_obs o45) -10.627)
	(= (x7_obs o45) 1.736)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -8.947)
	(= (x4_obs o46) -10.706)
	(= (x7_obs o46) 1.759)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -8.933)
	(= (x4_obs o47) -10.759)
	(= (x7_obs o47) 1.773)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -8.925)
	(= (x4_obs o48) -10.793)
	(= (x7_obs o48) 1.781)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -8.919)
	(= (x4_obs o49) -10.816)
	(= (x7_obs o49) 1.785)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -8.916)
	(= (x4_obs o50) -10.83)
	(= (x7_obs o50) 1.786)

	(= (time_obs o51) 51.0)
	(= (x1_obs o51) -8.914)
	(= (x4_obs o51) -10.84)
	(= (x7_obs o51) 1.787)

	(= (time_obs o52) 52.0)
	(= (x1_obs o52) -8.913)
	(= (x4_obs o52) -10.846)
	(= (x7_obs o52) 1.787)

	(= (time_obs o53) 53.0)
	(= (x1_obs o53) -8.912)
	(= (x4_obs o53) -10.85)
	(= (x7_obs o53) 1.787)

	(= (time_obs o54) 54.0)
	(= (x1_obs o54) -8.911)
	(= (x4_obs o54) -10.852)
	(= (x7_obs o54) 1.787)

	(= (time_obs o55) 55.0)
	(= (x1_obs o55) -9.487)
	(= (x4_obs o55) -9.709)
	(= (x7_obs o55) 1.223)

	(= (time_obs o56) 56.0)
	(= (x1_obs o56) -10.998)
	(= (x4_obs o56) -6.476)
	(= (x7_obs o56) -0.442)

	(= (time_obs o57) 57.0)
	(= (x1_obs o57) -11.962)
	(= (x4_obs o57) -4.076)
	(= (x7_obs o57) -1.718)

	(= (time_obs o58) 58.0)
	(= (x1_obs o58) -12.101)
	(= (x4_obs o58) -3.336)
	(= (x7_obs o58) -2.076)

	(= (time_obs o59) 59.0)
	(= (x1_obs o59) -11.866)
	(= (x4_obs o59) -3.509)
	(= (x7_obs o59) -1.884)

	(= (time_obs o60) 60.0)
	(= (x1_obs o60) -11.635)
	(= (x4_obs o60) -3.813)
	(= (x7_obs o60) -1.613)

	(= (time_obs o61) 61.0)
	(= (x1_obs o61) -11.519)
	(= (x4_obs o61) -3.942)
	(= (x7_obs o61) -1.473)

	(= (time_obs o62) 62.0)
	(= (x1_obs o62) -11.482)
	(= (x4_obs o62) -3.925)
	(= (x7_obs o62) -1.459)

	(= (time_obs o63) 63.0)
	(= (x1_obs o63) -11.469)
	(= (x4_obs o63) -3.867)
	(= (x7_obs o63) -1.494)

	(= (time_obs o64) 64.0)
	(= (x1_obs o64) -11.454)
	(= (x4_obs o64) -3.828)
	(= (x7_obs o64) -1.523)

	(= (time_obs o65) 65.0)
	(= (x1_obs o65) -11.194)
	(= (x4_obs o65) -4.587)
	(= (x7_obs o65) -1.002)

	(= (time_obs o66) 66.0)
	(= (x1_obs o66) -10.504)
	(= (x4_obs o66) -6.65)
	(= (x7_obs o66) 0.371)

	(= (time_obs o67) 67.0)
	(= (x1_obs o67) -9.911)
	(= (x4_obs o67) -8.25)
	(= (x7_obs o67) 1.261)

	(= (time_obs o68) 68.0)
	(= (x1_obs o68) -9.528)
	(= (x4_obs o68) -9.168)
	(= (x7_obs o68) 1.566)

	(= (time_obs o69) 69.0)
	(= (x1_obs o69) -9.294)
	(= (x4_obs o69) -9.715)
	(= (x7_obs o69) 1.629)

	(= (time_obs o70) 70.0)
	(= (x1_obs o70) -9.15)
	(= (x4_obs o70) -10.079)
	(= (x7_obs o70) 1.648)

	(= (time_obs o71) 71.0)
	(= (x1_obs o71) -9.06)
	(= (x4_obs o71) -10.332)
	(= (x7_obs o71) 1.675)

	(= (time_obs o72) 72.0)
	(= (x1_obs o72) -9.004)
	(= (x4_obs o72) -10.507)
	(= (x7_obs o72) 1.708)

	(= (time_obs o73) 73.0)
	(= (x1_obs o73) -8.969)
	(= (x4_obs o73) -10.626)
	(= (x7_obs o73) 1.738)

	(= (time_obs o74) 74.0)
	(= (x1_obs o74) -8.947)
	(= (x4_obs o74) -10.706)
	(= (x7_obs o74) 1.76)

	(= (time_obs o75) 75.0)
	(= (x1_obs o75) -8.933)
	(= (x4_obs o75) -10.759)
	(= (x7_obs o75) 1.774)

	(= (time_obs o76) 76.0)
	(= (x1_obs o76) -8.925)
	(= (x4_obs o76) -10.793)
	(= (x7_obs o76) 1.781)

	(= (time_obs o77) 77.0)
	(= (x1_obs o77) -9.466)
	(= (x4_obs o77) -9.728)
	(= (x7_obs o77) 1.248)

	(= (time_obs o78) 78.0)
	(= (x1_obs o78) -10.966)
	(= (x4_obs o78) -6.528)
	(= (x7_obs o78) -0.406)

	(= (time_obs o79) 79.0)
	(= (x1_obs o79) -11.943)
	(= (x4_obs o79) -4.106)
	(= (x7_obs o79) -1.699)

	(= (time_obs o80) 80.0)
	(= (x1_obs o80) -12.096)
	(= (x4_obs o80) -3.34)
	(= (x7_obs o80) -2.074)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)