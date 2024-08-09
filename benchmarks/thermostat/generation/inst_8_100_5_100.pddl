(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 o41 o42 o43 o44 o45 o46 o47 o48 o49 o50 o51 o52 o53 o54 o55 o56 o57 o58 o59 o60 o61 o62 o63 o64 o65 o66 o67 o68 o69 o70 o71 o72 o73 o74 o75 o76 o77 o78 o79 o80 o81 o82 o83 o84 o85 o86 o87 o88 o89 o90 o91 o92 o93 o94 o95 o96 o97 o98 o99 o100 - observation
)

(:init
	(= (heating_rate) 0.8)
	(= (cooling_rate) -0.2)
	(= (x) 19.3)
	(off)
	(= (running_time) 0)

	(= (time_precision) 0.1)
	(= (x_error) 0.05)
	(= (time_obs o0) 0.0)
	(= (x_obs o0) 19.3)

	(= (time_obs o1) 1.0)
	(= (x_obs o1) 19.1)

	(= (time_obs o2) 2.0)
	(= (x_obs o2) 18.9)

	(= (time_obs o3) 3.0)
	(= (x_obs o3) 19.2)

	(= (time_obs o4) 4.0)
	(= (x_obs o4) 20.0)

	(= (time_obs o5) 5.0)
	(= (x_obs o5) 20.8)

	(= (time_obs o6) 6.0)
	(= (x_obs o6) 21.6)

	(= (time_obs o7) 7.0)
	(= (x_obs o7) 21.78)

	(= (time_obs o8) 8.0)
	(= (x_obs o8) 21.58)

	(= (time_obs o9) 9.0)
	(= (x_obs o9) 21.38)

	(= (time_obs o10) 10.0)
	(= (x_obs o10) 21.18)

	(= (time_obs o11) 11.0)
	(= (x_obs o11) 20.98)

	(= (time_obs o12) 12.0)
	(= (x_obs o12) 20.78)

	(= (time_obs o13) 13.0)
	(= (x_obs o13) 20.58)

	(= (time_obs o14) 14.0)
	(= (x_obs o14) 20.38)

	(= (time_obs o15) 15.0)
	(= (x_obs o15) 20.18)

	(= (time_obs o16) 16.0)
	(= (x_obs o16) 19.98)

	(= (time_obs o17) 17.0)
	(= (x_obs o17) 19.78)

	(= (time_obs o18) 18.0)
	(= (x_obs o18) 19.58)

	(= (time_obs o19) 19.0)
	(= (x_obs o19) 19.38)

	(= (time_obs o20) 20.0)
	(= (x_obs o20) 19.18)

	(= (time_obs o21) 21.0)
	(= (x_obs o21) 18.98)

	(= (time_obs o22) 22.0)
	(= (x_obs o22) 18.88)

	(= (time_obs o23) 23.0)
	(= (x_obs o23) 19.68)

	(= (time_obs o24) 24.0)
	(= (x_obs o24) 20.48)

	(= (time_obs o25) 25.0)
	(= (x_obs o25) 21.28)

	(= (time_obs o26) 26.0)
	(= (x_obs o26) 21.86)

	(= (time_obs o27) 27.0)
	(= (x_obs o27) 21.66)

	(= (time_obs o28) 28.0)
	(= (x_obs o28) 21.46)

	(= (time_obs o29) 29.0)
	(= (x_obs o29) 21.26)

	(= (time_obs o30) 30.0)
	(= (x_obs o30) 21.06)

	(= (time_obs o31) 31.0)
	(= (x_obs o31) 20.86)

	(= (time_obs o32) 32.0)
	(= (x_obs o32) 20.66)

	(= (time_obs o33) 33.0)
	(= (x_obs o33) 20.46)

	(= (time_obs o34) 34.0)
	(= (x_obs o34) 20.26)

	(= (time_obs o35) 35.0)
	(= (x_obs o35) 20.06)

	(= (time_obs o36) 36.0)
	(= (x_obs o36) 19.86)

	(= (time_obs o37) 37.0)
	(= (x_obs o37) 19.66)

	(= (time_obs o38) 38.0)
	(= (x_obs o38) 19.46)

	(= (time_obs o39) 39.0)
	(= (x_obs o39) 19.26)

	(= (time_obs o40) 40.0)
	(= (x_obs o40) 19.06)

	(= (time_obs o41) 41.0)
	(= (x_obs o41) 18.86)

	(= (time_obs o42) 42.0)
	(= (x_obs o42) 19.36)

	(= (time_obs o43) 43.0)
	(= (x_obs o43) 20.16)

	(= (time_obs o44) 44.0)
	(= (x_obs o44) 20.96)

	(= (time_obs o45) 45.0)
	(= (x_obs o45) 21.76)

	(= (time_obs o46) 46.0)
	(= (x_obs o46) 21.74)

	(= (time_obs o47) 47.0)
	(= (x_obs o47) 21.54)

	(= (time_obs o48) 48.0)
	(= (x_obs o48) 21.34)

	(= (time_obs o49) 49.0)
	(= (x_obs o49) 21.14)

	(= (time_obs o50) 50.0)
	(= (x_obs o50) 20.94)

	(= (time_obs o51) 51.0)
	(= (x_obs o51) 20.74)

	(= (time_obs o52) 52.0)
	(= (x_obs o52) 20.54)

	(= (time_obs o53) 53.0)
	(= (x_obs o53) 20.34)

	(= (time_obs o54) 54.0)
	(= (x_obs o54) 20.14)

	(= (time_obs o55) 55.0)
	(= (x_obs o55) 19.94)

	(= (time_obs o56) 56.0)
	(= (x_obs o56) 19.74)

	(= (time_obs o57) 57.0)
	(= (x_obs o57) 19.54)

	(= (time_obs o58) 58.0)
	(= (x_obs o58) 19.34)

	(= (time_obs o59) 59.0)
	(= (x_obs o59) 19.14)

	(= (time_obs o60) 60.0)
	(= (x_obs o60) 18.94)

	(= (time_obs o61) 61.0)
	(= (x_obs o61) 19.04)

	(= (time_obs o62) 62.0)
	(= (x_obs o62) 19.84)

	(= (time_obs o63) 63.0)
	(= (x_obs o63) 20.64)

	(= (time_obs o64) 64.0)
	(= (x_obs o64) 21.44)

	(= (time_obs o65) 65.0)
	(= (x_obs o65) 21.82)

	(= (time_obs o66) 66.0)
	(= (x_obs o66) 21.62)

	(= (time_obs o67) 67.0)
	(= (x_obs o67) 21.42)

	(= (time_obs o68) 68.0)
	(= (x_obs o68) 21.22)

	(= (time_obs o69) 69.0)
	(= (x_obs o69) 21.02)

	(= (time_obs o70) 70.0)
	(= (x_obs o70) 20.82)

	(= (time_obs o71) 71.0)
	(= (x_obs o71) 20.62)

	(= (time_obs o72) 72.0)
	(= (x_obs o72) 20.42)

	(= (time_obs o73) 73.0)
	(= (x_obs o73) 20.22)

	(= (time_obs o74) 74.0)
	(= (x_obs o74) 20.02)

	(= (time_obs o75) 75.0)
	(= (x_obs o75) 19.82)

	(= (time_obs o76) 76.0)
	(= (x_obs o76) 19.62)

	(= (time_obs o77) 77.0)
	(= (x_obs o77) 19.42)

	(= (time_obs o78) 78.0)
	(= (x_obs o78) 19.22)

	(= (time_obs o79) 79.0)
	(= (x_obs o79) 19.02)

	(= (time_obs o80) 80.0)
	(= (x_obs o80) 18.82)

	(= (time_obs o81) 81.0)
	(= (x_obs o81) 19.52)

	(= (time_obs o82) 82.0)
	(= (x_obs o82) 20.32)

	(= (time_obs o83) 83.0)
	(= (x_obs o83) 21.12)

	(= (time_obs o84) 84.0)
	(= (x_obs o84) 21.9)

	(= (time_obs o85) 85.0)
	(= (x_obs o85) 21.7)

	(= (time_obs o86) 86.0)
	(= (x_obs o86) 21.5)

	(= (time_obs o87) 87.0)
	(= (x_obs o87) 21.3)

	(= (time_obs o88) 88.0)
	(= (x_obs o88) 21.1)

	(= (time_obs o89) 89.0)
	(= (x_obs o89) 20.9)

	(= (time_obs o90) 90.0)
	(= (x_obs o90) 20.7)

	(= (time_obs o91) 91.0)
	(= (x_obs o91) 20.5)

	(= (time_obs o92) 92.0)
	(= (x_obs o92) 20.3)

	(= (time_obs o93) 93.0)
	(= (x_obs o93) 20.1)

	(= (time_obs o94) 94.0)
	(= (x_obs o94) 19.9)

	(= (time_obs o95) 95.0)
	(= (x_obs o95) 19.7)

	(= (time_obs o96) 96.0)
	(= (x_obs o96) 19.5)

	(= (time_obs o97) 97.0)
	(= (x_obs o97) 19.3)

	(= (time_obs o98) 98.0)
	(= (x_obs o98) 19.1)

	(= (time_obs o99) 99.0)
	(= (x_obs o99) 18.9)

	(= (time_obs o100) 100.0)
	(= (x_obs o100) 19.2)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
