(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 18.9)
	(off)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 18.9)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 18.7)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 18.5)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 18.3)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 18.6)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 19.4)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.2)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 21.0)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 21.68)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 21.48)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 21.28)

	(= (time_obs o11) 11.0)
	(= (x_obs o11) 21.08)

	(= (time_obs o12) 12.0)
	(= (x_obs o12) 20.88)

	(= (time_obs o13) 13.0)
	(= (x_obs o13) 20.68)

	(= (time_obs o14) 14.0)
	(= (x_obs o14) 20.48)

	(= (time_obs o15) 15.0)
	(= (x_obs o15) 20.28)

	(= (time_obs o16) 16.0)
	(= (x_obs o16) 20.08)

	(= (time_obs o17) 17.0)
	(= (x_obs o17) 19.88)

	(= (time_obs o18) 18.0)
	(= (x_obs o18) 19.68)

	(= (time_obs o19) 19.0)
	(= (x_obs o19) 19.48)

	(= (time_obs o20) 20.0)
	(= (x_obs o20) 19.28)

	(= (time_obs o21) 21.0)
	(= (x_obs o21) 19.08)

	(= (time_obs o22) 22.0)
	(= (x_obs o22) 18.88)

	(= (time_obs o23) 23.0)
	(= (x_obs o23) 18.68)

	(= (time_obs o24) 24.0)
	(= (x_obs o24) 18.48)

	(= (time_obs o25) 25.0)
	(= (x_obs o25) 18.28)

	(= (time_obs o26) 26.0)
	(= (x_obs o26) 18.68)

	(= (time_obs o27) 27.0)
	(= (x_obs o27) 19.48)

	(= (time_obs o28) 28.0)
	(= (x_obs o28) 20.28)

	(= (time_obs o29) 29.0)
	(= (x_obs o29) 21.08)

	(= (time_obs o30) 30.0)
	(= (x_obs o30) 21.66)

	(= (time_obs o31) 31.0)
	(= (x_obs o31) 21.46)

	(= (time_obs o32) 32.0)
	(= (x_obs o32) 21.26)

	(= (time_obs o33) 33.0)
	(= (x_obs o33) 21.06)

	(= (time_obs o34) 34.0)
	(= (x_obs o34) 20.86)

	(= (time_obs o35) 35.0)
	(= (x_obs o35) 20.66)

	(= (time_obs o36) 36.0)
	(= (x_obs o36) 20.46)

	(= (time_obs o37) 37.0)
	(= (x_obs o37) 20.26)

	(= (time_obs o38) 38.0)
	(= (x_obs o38) 20.06)

	(= (time_obs o39) 39.0)
	(= (x_obs o39) 19.86)

	(= (time_obs o40) 40.0)
	(= (x_obs o40) 19.66)

	(= (time_obs o41) 41.0)
	(= (x_obs o41) 19.46)

	(= (time_obs o42) 42.0)
	(= (x_obs o42) 19.26)

	(= (time_obs o43) 43.0)
	(= (x_obs o43) 19.06)

	(= (time_obs o44) 44.0)
	(= (x_obs o44) 18.86)

	(= (time_obs o45) 45.0)
	(= (x_obs o45) 18.66)

	(= (time_obs o46) 46.0)
	(= (x_obs o46) 18.46)

	(= (time_obs o47) 47.0)
	(= (x_obs o47) 18.26)

	(= (time_obs o48) 48.0)
	(= (x_obs o48) 18.76)

	(= (time_obs o49) 49.0)
	(= (x_obs o49) 19.56)

	(= (time_obs o50) 50.0)
	(= (x_obs o50) 20.36)

	(= (time_obs o51) 51.0)
	(= (x_obs o51) 21.16)

	(= (time_obs o52) 52.0)
	(= (x_obs o52) 21.64)

	(= (time_obs o53) 53.0)
	(= (x_obs o53) 21.44)

	(= (time_obs o54) 54.0)
	(= (x_obs o54) 21.24)

	(= (time_obs o55) 55.0)
	(= (x_obs o55) 21.04)

	(= (time_obs o56) 56.0)
	(= (x_obs o56) 20.84)

	(= (time_obs o57) 57.0)
	(= (x_obs o57) 20.64)

	(= (time_obs o58) 58.0)
	(= (x_obs o58) 20.44)

	(= (time_obs o59) 59.0)
	(= (x_obs o59) 20.24)

	(= (time_obs o60) 60.0)
	(= (x_obs o60) 20.04)

	(= (time_obs o61) 61.0)
	(= (x_obs o61) 19.84)

	(= (time_obs o62) 62.0)
	(= (x_obs o62) 19.64)

	(= (time_obs o63) 63.0)
	(= (x_obs o63) 19.44)

	(= (time_obs o64) 64.0)
	(= (x_obs o64) 19.24)

	(= (time_obs o65) 65.0)
	(= (x_obs o65) 19.04)

	(= (time_obs o66) 66.0)
	(= (x_obs o66) 18.84)

	(= (time_obs o67) 67.0)
	(= (x_obs o67) 18.64)

	(= (time_obs o68) 68.0)
	(= (x_obs o68) 18.44)

	(= (time_obs o69) 69.0)
	(= (x_obs o69) 18.24)

	(= (time_obs o70) 70.0)
	(= (x_obs o70) 18.84)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
