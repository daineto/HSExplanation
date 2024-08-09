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
	(= (x1_obs o12) -10.822)
	(= (x4_obs o12) -4.542)
	(= (x7_obs o12) -0.87)

	(= (time_obs o13) 13.0)
	(= (x1_obs o13) -10.251)
	(= (x4_obs o13) -6.67)
	(= (x7_obs o13) 0.536)

	(= (time_obs o14) 14.0)
	(= (x1_obs o14) -9.751)
	(= (x4_obs o14) -8.298)
	(= (x7_obs o14) 1.428)

	(= (time_obs o15) 15.0)
	(= (x1_obs o15) -9.429)
	(= (x4_obs o15) -9.233)
	(= (x7_obs o15) 1.717)

	(= (time_obs o16) 16.0)
	(= (x1_obs o16) -9.232)
	(= (x4_obs o16) -9.782)
	(= (x7_obs o16) 1.747)

	(= (time_obs o17) 17.0)
	(= (x1_obs o17) -9.111)
	(= (x4_obs o17) -10.138)
	(= (x7_obs o17) 1.73)

	(= (time_obs o18) 18.0)
	(= (x1_obs o18) -9.036)
	(= (x4_obs o18) -10.379)
	(= (x7_obs o18) 1.725)

	(= (time_obs o19) 19.0)
	(= (x1_obs o19) -8.989)
	(= (x4_obs o19) -10.542)
	(= (x7_obs o19) 1.736)

	(= (time_obs o20) 20.0)
	(= (x1_obs o20) -8.959)
	(= (x4_obs o20) -10.651)
	(= (x7_obs o20) 1.752)

	(= (time_obs o21) 21.0)
	(= (x1_obs o21) -9.532)
	(= (x4_obs o21) -9.54)
	(= (x7_obs o21) 1.179)

	(= (time_obs o22) 22.0)
	(= (x1_obs o22) -11.012)
	(= (x4_obs o22) -6.375)
	(= (x7_obs o22) -0.473)

	(= (time_obs o23) 23.0)
	(= (x1_obs o23) -11.945)
	(= (x4_obs o23) -4.047)
	(= (x7_obs o23) -1.724)

	(= (time_obs o24) 24.0)
	(= (x1_obs o24) -12.075)
	(= (x4_obs o24) -3.341)
	(= (x7_obs o24) -2.068)

	(= (time_obs o25) 25.0)
	(= (x1_obs o25) -11.846)
	(= (x4_obs o25) -3.518)
	(= (x7_obs o25) -1.876)

	(= (time_obs o26) 26.0)
	(= (x1_obs o26) -11.623)
	(= (x4_obs o26) -3.814)
	(= (x7_obs o26) -1.609)

	(= (time_obs o27) 27.0)
	(= (x1_obs o27) -11.512)
	(= (x4_obs o27) -3.939)
	(= (x7_obs o27) -1.472)

	(= (time_obs o28) 28.0)
	(= (x1_obs o28) -11.478)
	(= (x4_obs o28) -3.921)
	(= (x7_obs o28) -1.46)

	(= (time_obs o29) 29.0)
	(= (x1_obs o29) -11.466)
	(= (x4_obs o29) -3.864)
	(= (x7_obs o29) -1.495)

	(= (time_obs o30) 30.0)
	(= (x1_obs o30) -11.452)
	(= (x4_obs o30) -3.827)
	(= (x7_obs o30) -1.523)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.435)
	(= (x4_obs o31) -3.816)
	(= (x7_obs o31) -1.531)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.42)
	(= (x4_obs o32) -3.818)
	(= (x7_obs o32) -1.526)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -11.41)
	(= (x4_obs o33) -3.82)
	(= (x7_obs o33) -1.519)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.404)
	(= (x4_obs o34) -3.82)
	(= (x7_obs o34) -1.515)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.4)
	(= (x4_obs o35) -3.818)
	(= (x7_obs o35) -1.514)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.398)
	(= (x4_obs o36) -3.816)
	(= (x7_obs o36) -1.514)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.395)
	(= (x4_obs o37) -3.814)
	(= (x7_obs o37) -1.514)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.393)
	(= (x4_obs o38) -3.814)
	(= (x7_obs o38) -1.514)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -11.138)
	(= (x4_obs o39) -4.62)
	(= (x7_obs o39) -0.959)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -10.462)
	(= (x4_obs o40) -6.69)
	(= (x7_obs o40) 0.417)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -9.884)
	(= (x4_obs o41) -8.279)
	(= (x7_obs o41) 1.293)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.511)
	(= (x4_obs o42) -9.189)
	(= (x7_obs o42) 1.588)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.284)
	(= (x4_obs o43) -9.732)
	(= (x7_obs o43) 1.644)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.143)
	(= (x4_obs o44) -10.092)
	(= (x7_obs o44) 1.658)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -9.056)
	(= (x4_obs o45) -10.341)
	(= (x7_obs o45) 1.681)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -9.001)
	(= (x4_obs o46) -10.514)
	(= (x7_obs o46) 1.712)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -9.525)
	(= (x4_obs o47) -9.512)
	(= (x7_obs o47) 1.184)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -10.98)
	(= (x4_obs o48) -6.411)
	(= (x7_obs o48) -0.442)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -11.921)
	(= (x4_obs o49) -4.078)
	(= (x7_obs o49) -1.701)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -12.065)
	(= (x4_obs o50) -3.349)
	(= (x7_obs o50) -2.061)

	(= (time_obs o51) 51.0)
	(= (x1_obs o51) -11.843)
	(= (x4_obs o51) -3.513)
	(= (x7_obs o51) -1.879)

	(= (time_obs o52) 52.0)
	(= (x1_obs o52) -11.389)
	(= (x4_obs o52) -4.52)
	(= (x7_obs o52) -1.132)

	(= (time_obs o53) 53.0)
	(= (x1_obs o53) -10.61)
	(= (x4_obs o53) -6.599)
	(= (x7_obs o53) 0.271)

	(= (time_obs o54) 54.0)
	(= (x1_obs o54) -9.976)
	(= (x4_obs o54) -8.176)
	(= (x7_obs o54) 1.155)

	(= (time_obs o55) 55.0)
	(= (x1_obs o55) -9.569)
	(= (x4_obs o55) -9.095)
	(= (x7_obs o55) 1.478)

	(= (time_obs o56) 56.0)
	(= (x1_obs o56) -9.32)
	(= (x4_obs o56) -9.657)
	(= (x7_obs o56) 1.57)

	(= (time_obs o57) 57.0)
	(= (x1_obs o57) -9.166)
	(= (x4_obs o57) -10.037)
	(= (x7_obs o57) 1.615)

	(= (time_obs o58) 58.0)
	(= (x1_obs o58) -9.07)
	(= (x4_obs o58) -10.302)
	(= (x7_obs o58) 1.659)

	(= (time_obs o59) 59.0)
	(= (x1_obs o59) -9.01)
	(= (x4_obs o59) -10.487)
	(= (x7_obs o59) 1.701)

	(= (time_obs o60) 60.0)
	(= (x1_obs o60) -8.972)
	(= (x4_obs o60) -10.613)
	(= (x7_obs o60) 1.736)

	(= (time_obs o61) 61.0)
	(= (x1_obs o61) -8.949)
	(= (x4_obs o61) -10.697)
	(= (x7_obs o61) 1.759)

	(= (time_obs o62) 62.0)
	(= (x1_obs o62) -8.935)
	(= (x4_obs o62) -10.753)
	(= (x7_obs o62) 1.773)

	(= (time_obs o63) 63.0)
	(= (x1_obs o63) -8.926)
	(= (x4_obs o63) -10.789)
	(= (x7_obs o63) 1.781)

	(= (time_obs o64) 64.0)
	(= (x1_obs o64) -8.92)
	(= (x4_obs o64) -10.813)
	(= (x7_obs o64) 1.785)

	(= (time_obs o65) 65.0)
	(= (x1_obs o65) -9.464)
	(= (x4_obs o65) -9.74)
	(= (x7_obs o65) 1.249)

	(= (time_obs o66) 66.0)
	(= (x1_obs o66) -10.967)
	(= (x4_obs o66) -6.532)
	(= (x7_obs o66) -0.407)

	(= (time_obs o67) 67.0)
	(= (x1_obs o67) -11.946)
	(= (x4_obs o67) -4.106)
	(= (x7_obs o67) -1.7)

	(= (time_obs o68) 68.0)
	(= (x1_obs o68) -12.099)
	(= (x4_obs o68) -3.339)
	(= (x7_obs o68) -2.075)

	(= (time_obs o69) 69.0)
	(= (x1_obs o69) -11.868)
	(= (x4_obs o69) -3.503)
	(= (x7_obs o69) -1.89)

	(= (time_obs o70) 70.0)
	(= (x1_obs o70) -11.636)
	(= (x4_obs o70) -3.807)
	(= (x7_obs o70) -1.617)

	(= (time_obs o71) 71.0)
	(= (x1_obs o71) -11.519)
	(= (x4_obs o71) -3.94)
	(= (x7_obs o71) -1.475)

	(= (time_obs o72) 72.0)
	(= (x1_obs o72) -11.481)
	(= (x4_obs o72) -3.925)
	(= (x7_obs o72) -1.459)

	(= (time_obs o73) 73.0)
	(= (x1_obs o73) -11.468)
	(= (x4_obs o73) -3.868)
	(= (x7_obs o73) -1.493)

	(= (time_obs o74) 74.0)
	(= (x1_obs o74) -11.454)
	(= (x4_obs o74) -3.829)
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
