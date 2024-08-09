(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 21.7)
	(on)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 21.7)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 21.63)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 21.43)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 21.23)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 21.03)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 20.83)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.63)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 20.43)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 20.23)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 20.03)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 19.83)

	(= (time_obs o11) 11.0)
	(= (x_obs o11) 19.63)

	(= (time_obs o12) 12.0)
	(= (x_obs o12) 19.43)

	(= (time_obs o13) 13.0)
	(= (x_obs o13) 19.23)

	(= (time_obs o14) 14.0)
	(= (x_obs o14) 19.03)

	(= (time_obs o15) 15.0)
	(= (x_obs o15) 18.83)

	(= (time_obs o16) 16.0)
	(= (x_obs o16) 18.63)

	(= (time_obs o17) 17.0)
	(= (x_obs o17) 18.43)

	(= (time_obs o18) 18.0)
	(= (x_obs o18) 18.23)

	(= (time_obs o19) 19.0)
	(= (x_obs o19) 18.37)

	(= (time_obs o20) 20.0)
	(= (x_obs o20) 19.17)

	(= (time_obs o21) 21.0)
	(= (x_obs o21) 19.97)

	(= (time_obs o22) 22.0)
	(= (x_obs o22) 20.77)

	(= (time_obs o23) 23.0)
	(= (x_obs o23) 21.57)

	(= (time_obs o24) 24.0)
	(= (x_obs o24) 21.66)

	(= (time_obs o25) 25.0)
	(= (x_obs o25) 21.46)

	(= (time_obs o26) 26.0)
	(= (x_obs o26) 21.26)

	(= (time_obs o27) 27.0)
	(= (x_obs o27) 21.06)

	(= (time_obs o28) 28.0)
	(= (x_obs o28) 20.86)

	(= (time_obs o29) 29.0)
	(= (x_obs o29) 20.66)

	(= (time_obs o30) 30.0)
	(= (x_obs o30) 20.46)

	(= (time_obs o31) 31.0)
	(= (x_obs o31) 20.26)

	(= (time_obs o32) 32.0)
	(= (x_obs o32) 20.06)

	(= (time_obs o33) 33.0)
	(= (x_obs o33) 19.86)

	(= (time_obs o34) 34.0)
	(= (x_obs o34) 19.66)

	(= (time_obs o35) 35.0)
	(= (x_obs o35) 19.46)

	(= (time_obs o36) 36.0)
	(= (x_obs o36) 19.26)

	(= (time_obs o37) 37.0)
	(= (x_obs o37) 19.06)

	(= (time_obs o38) 38.0)
	(= (x_obs o38) 18.86)

	(= (time_obs o39) 39.0)
	(= (x_obs o39) 18.66)

	(= (time_obs o40) 40.0)
	(= (x_obs o40) 18.46)

	(= (time_obs o41) 41.0)
	(= (x_obs o41) 18.26)

	(= (time_obs o42) 42.0)
	(= (x_obs o42) 18.25)

	(= (time_obs o43) 43.0)
	(= (x_obs o43) 19.05)

	(= (time_obs o44) 44.0)
	(= (x_obs o44) 19.85)

	(= (time_obs o45) 45.0)
	(= (x_obs o45) 20.65)

	(= (time_obs o46) 46.0)
	(= (x_obs o46) 21.45)

	(= (time_obs o47) 47.0)
	(= (x_obs o47) 21.69)

	(= (time_obs o48) 48.0)
	(= (x_obs o48) 21.49)

	(= (time_obs o49) 49.0)
	(= (x_obs o49) 21.29)

	(= (time_obs o50) 50.0)
	(= (x_obs o50) 21.09)

	(= (time_obs o51) 51.0)
	(= (x_obs o51) 20.89)

	(= (time_obs o52) 52.0)
	(= (x_obs o52) 20.69)

	(= (time_obs o53) 53.0)
	(= (x_obs o53) 20.49)

	(= (time_obs o54) 54.0)
	(= (x_obs o54) 20.29)

	(= (time_obs o55) 55.0)
	(= (x_obs o55) 20.09)

	(= (time_obs o56) 56.0)
	(= (x_obs o56) 19.89)

	(= (time_obs o57) 57.0)
	(= (x_obs o57) 19.69)

	(= (time_obs o58) 58.0)
	(= (x_obs o58) 19.49)

	(= (time_obs o59) 59.0)
	(= (x_obs o59) 19.29)

	(= (time_obs o60) 60.0)
	(= (x_obs o60) 19.09)

	(= (time_obs o61) 61.0)
	(= (x_obs o61) 18.89)

	(= (time_obs o62) 62.0)
	(= (x_obs o62) 18.69)

	(= (time_obs o63) 63.0)
	(= (x_obs o63) 18.49)

	(= (time_obs o64) 64.0)
	(= (x_obs o64) 18.29)

	(= (time_obs o65) 65.0)
	(= (x_obs o65) 18.13)

	(= (time_obs o66) 66.0)
	(= (x_obs o66) 18.93)

	(= (time_obs o67) 67.0)
	(= (x_obs o67) 19.73)

	(= (time_obs o68) 68.0)
	(= (x_obs o68) 20.53)

	(= (time_obs o69) 69.0)
	(= (x_obs o69) 21.33)

	(= (time_obs o70) 70.0)
	(= (x_obs o70) 21.72)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
