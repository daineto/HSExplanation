(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 o71 o72 o73 o74 o75 o76 o77 o78 o79 o80 o81 o82 o83 o84 o85 o86 o87 o88 o89 o90 o91 o92 o93 o94 o95 o96 o97 o98 o99 o100 - observation
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
	(= (x_obs o1) 21.51)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 21.31)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 21.11)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 20.91)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 20.71)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 20.51)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 20.31)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 20.11)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 19.91)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 19.71)

	(= (time_obs o11) 11.0)
	(= (x_obs o11) 19.51)

	(= (time_obs o12) 12.0)
	(= (x_obs o12) 19.31)

	(= (time_obs o13) 13.0)
	(= (x_obs o13) 19.11)

	(= (time_obs o14) 14.0)
	(= (x_obs o14) 18.91)

	(= (time_obs o15) 15.0)
	(= (x_obs o15) 18.71)

	(= (time_obs o16) 16.0)
	(= (x_obs o16) 18.95)

	(= (time_obs o17) 17.0)
	(= (x_obs o17) 19.75)

	(= (time_obs o18) 18.0)
	(= (x_obs o18) 20.55)

	(= (time_obs o19) 19.0)
	(= (x_obs o19) 21.35)

	(= (time_obs o20) 20.0)
	(= (x_obs o20) 21.59)

	(= (time_obs o21) 21.0)
	(= (x_obs o21) 21.39)

	(= (time_obs o22) 22.0)
	(= (x_obs o22) 21.19)

	(= (time_obs o23) 23.0)
	(= (x_obs o23) 20.99)

	(= (time_obs o24) 24.0)
	(= (x_obs o24) 20.79)

	(= (time_obs o25) 25.0)
	(= (x_obs o25) 20.59)

	(= (time_obs o26) 26.0)
	(= (x_obs o26) 20.39)

	(= (time_obs o27) 27.0)
	(= (x_obs o27) 20.19)

	(= (time_obs o28) 28.0)
	(= (x_obs o28) 19.99)

	(= (time_obs o29) 29.0)
	(= (x_obs o29) 19.79)

	(= (time_obs o30) 30.0)
	(= (x_obs o30) 19.59)

	(= (time_obs o31) 31.0)
	(= (x_obs o31) 19.39)

	(= (time_obs o32) 32.0)
	(= (x_obs o32) 19.19)

	(= (time_obs o33) 33.0)
	(= (x_obs o33) 18.99)

	(= (time_obs o34) 34.0)
	(= (x_obs o34) 18.79)

	(= (time_obs o35) 35.0)
	(= (x_obs o35) 18.63)

	(= (time_obs o36) 36.0)
	(= (x_obs o36) 19.43)

	(= (time_obs o37) 37.0)
	(= (x_obs o37) 20.23)

	(= (time_obs o38) 38.0)
	(= (x_obs o38) 21.03)

	(= (time_obs o39) 39.0)
	(= (x_obs o39) 21.67)

	(= (time_obs o40) 40.0)
	(= (x_obs o40) 21.47)

	(= (time_obs o41) 41.0)
	(= (x_obs o41) 21.27)

	(= (time_obs o42) 42.0)
	(= (x_obs o42) 21.07)

	(= (time_obs o43) 43.0)
	(= (x_obs o43) 20.87)

	(= (time_obs o44) 44.0)
	(= (x_obs o44) 20.67)

	(= (time_obs o45) 45.0)
	(= (x_obs o45) 20.47)

	(= (time_obs o46) 46.0)
	(= (x_obs o46) 20.27)

	(= (time_obs o47) 47.0)
	(= (x_obs o47) 20.07)

	(= (time_obs o48) 48.0)
	(= (x_obs o48) 19.87)

	(= (time_obs o49) 49.0)
	(= (x_obs o49) 19.67)

	(= (time_obs o50) 50.0)
	(= (x_obs o50) 19.47)

	(= (time_obs o51) 51.0)
	(= (x_obs o51) 19.27)

	(= (time_obs o52) 52.0)
	(= (x_obs o52) 19.07)

	(= (time_obs o53) 53.0)
	(= (x_obs o53) 18.87)

	(= (time_obs o54) 54.0)
	(= (x_obs o54) 18.67)

	(= (time_obs o55) 55.0)
	(= (x_obs o55) 19.11)

	(= (time_obs o56) 56.0)
	(= (x_obs o56) 19.91)

	(= (time_obs o57) 57.0)
	(= (x_obs o57) 20.71)

	(= (time_obs o58) 58.0)
	(= (x_obs o58) 21.51)

	(= (time_obs o59) 59.0)
	(= (x_obs o59) 21.55)

	(= (time_obs o60) 60.0)
	(= (x_obs o60) 21.35)

	(= (time_obs o61) 61.0)
	(= (x_obs o61) 21.15)

	(= (time_obs o62) 62.0)
	(= (x_obs o62) 20.95)

	(= (time_obs o63) 63.0)
	(= (x_obs o63) 20.75)

	(= (time_obs o64) 64.0)
	(= (x_obs o64) 20.55)

	(= (time_obs o65) 65.0)
	(= (x_obs o65) 20.35)

	(= (time_obs o66) 66.0)
	(= (x_obs o66) 20.15)

	(= (time_obs o67) 67.0)
	(= (x_obs o67) 19.95)

	(= (time_obs o68) 68.0)
	(= (x_obs o68) 19.75)

	(= (time_obs o69) 69.0)
	(= (x_obs o69) 19.55)

	(= (time_obs o70) 70.0)
	(= (x_obs o70) 19.35)

	(= (time_obs o71) 71.0)
	(= (x_obs o71) 19.15)

	(= (time_obs o72) 72.0)
	(= (x_obs o72) 18.95)

	(= (time_obs o73) 73.0)
	(= (x_obs o73) 18.75)

	(= (time_obs o74) 74.0)
	(= (x_obs o74) 18.79)

	(= (time_obs o75) 75.0)
	(= (x_obs o75) 19.59)

	(= (time_obs o76) 76.0)
	(= (x_obs o76) 20.39)

	(= (time_obs o77) 77.0)
	(= (x_obs o77) 21.19)

	(= (time_obs o78) 78.0)
	(= (x_obs o78) 21.63)

	(= (time_obs o79) 79.0)
	(= (x_obs o79) 21.43)

	(= (time_obs o80) 80.0)
	(= (x_obs o80) 21.23)

	(= (time_obs o81) 81.0)
	(= (x_obs o81) 21.03)

	(= (time_obs o82) 82.0)
	(= (x_obs o82) 20.83)

	(= (time_obs o83) 83.0)
	(= (x_obs o83) 20.63)

	(= (time_obs o84) 84.0)
	(= (x_obs o84) 20.43)

	(= (time_obs o85) 85.0)
	(= (x_obs o85) 20.23)

	(= (time_obs o86) 86.0)
	(= (x_obs o86) 20.03)

	(= (time_obs o87) 87.0)
	(= (x_obs o87) 19.83)

	(= (time_obs o88) 88.0)
	(= (x_obs o88) 19.63)

	(= (time_obs o89) 89.0)
	(= (x_obs o89) 19.43)

	(= (time_obs o90) 90.0)
	(= (x_obs o90) 19.23)

	(= (time_obs o91) 91.0)
	(= (x_obs o91) 19.03)

	(= (time_obs o92) 92.0)
	(= (x_obs o92) 18.83)

	(= (time_obs o93) 93.0)
	(= (x_obs o93) 18.63)

	(= (time_obs o94) 94.0)
	(= (x_obs o94) 19.27)

	(= (time_obs o95) 95.0)
	(= (x_obs o95) 20.07)

	(= (time_obs o96) 96.0)
	(= (x_obs o96) 20.87)

	(= (time_obs o97) 97.0)
	(= (x_obs o97) 21.67)

	(= (time_obs o98) 98.0)
	(= (x_obs o98) 21.51)

	(= (time_obs o99) 99.0)
	(= (x_obs o99) 21.31)

	(= (time_obs o100) 100.0)
	(= (x_obs o100) 21.11)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
