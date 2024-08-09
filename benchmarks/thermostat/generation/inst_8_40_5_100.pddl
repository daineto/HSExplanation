(define (problem problem_name) (:domain decoding)

(:objects
o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33 o34 o35 o36 o37 o38 o39 o40 - observation
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

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
