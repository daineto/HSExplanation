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
	(= (x1_obs o30) -9.536)
	(= (x4_obs o30) -9.529)
	(= (x7_obs o30) 1.175)

	(= (time_obs o31) 31.0)
	(= (x1_obs o31) -11.013)
	(= (x4_obs o31) -6.372)
	(= (x7_obs o31) -0.472)

	(= (time_obs o32) 32.0)
	(= (x1_obs o32) -11.944)
	(= (x4_obs o32) -4.047)
	(= (x7_obs o32) -1.722)

	(= (time_obs o33) 33.0)
	(= (x1_obs o33) -12.074)
	(= (x4_obs o33) -3.342)
	(= (x7_obs o33) -2.066)

	(= (time_obs o34) 34.0)
	(= (x1_obs o34) -11.845)
	(= (x4_obs o34) -3.518)
	(= (x7_obs o34) -1.875)

	(= (time_obs o35) 35.0)
	(= (x1_obs o35) -11.623)
	(= (x4_obs o35) -3.814)
	(= (x7_obs o35) -1.609)

	(= (time_obs o36) 36.0)
	(= (x1_obs o36) -11.512)
	(= (x4_obs o36) -3.939)
	(= (x7_obs o36) -1.473)

	(= (time_obs o37) 37.0)
	(= (x1_obs o37) -11.477)
	(= (x4_obs o37) -3.921)
	(= (x7_obs o37) -1.46)

	(= (time_obs o38) 38.0)
	(= (x1_obs o38) -11.207)
	(= (x4_obs o38) -4.679)
	(= (x7_obs o38) -0.935)

	(= (time_obs o39) 39.0)
	(= (x1_obs o39) -10.509)
	(= (x4_obs o39) -6.724)
	(= (x7_obs o39) 0.414)

	(= (time_obs o40) 40.0)
	(= (x1_obs o40) -9.913)
	(= (x4_obs o40) -8.296)
	(= (x7_obs o40) 1.273)

	(= (time_obs o41) 41.0)
	(= (x1_obs o41) -9.53)
	(= (x4_obs o41) -9.193)
	(= (x7_obs o41) 1.56)

	(= (time_obs o42) 42.0)
	(= (x1_obs o42) -9.295)
	(= (x4_obs o42) -9.728)
	(= (x7_obs o42) 1.618)

	(= (time_obs o43) 43.0)
	(= (x1_obs o43) -9.15)
	(= (x4_obs o43) -10.086)
	(= (x7_obs o43) 1.639)

	(= (time_obs o44) 44.0)
	(= (x1_obs o44) -9.06)
	(= (x4_obs o44) -10.336)
	(= (x7_obs o44) 1.669)

	(= (time_obs o45) 45.0)
	(= (x1_obs o45) -9.004)
	(= (x4_obs o45) -10.509)
	(= (x7_obs o45) 1.705)

	(= (time_obs o46) 46.0)
	(= (x1_obs o46) -8.969)
	(= (x4_obs o46) -10.627)
	(= (x7_obs o46) 1.737)

	(= (time_obs o47) 47.0)
	(= (x1_obs o47) -8.947)
	(= (x4_obs o47) -10.706)
	(= (x7_obs o47) 1.759)

	(= (time_obs o48) 48.0)
	(= (x1_obs o48) -9.501)
	(= (x4_obs o48) -9.625)
	(= (x7_obs o48) 1.212)

	(= (time_obs o49) 49.0)
	(= (x1_obs o49) -10.989)
	(= (x4_obs o49) -6.448)
	(= (x7_obs o49) -0.438)

	(= (time_obs o50) 50.0)
	(= (x1_obs o50) -11.943)
	(= (x4_obs o50) -4.076)
	(= (x7_obs o50) -1.71)

	(= (time_obs o51) 51.0)
	(= (x1_obs o51) -12.084)
	(= (x4_obs o51) -3.341)
	(= (x7_obs o51) -2.07)

	(= (time_obs o52) 52.0)
	(= (x1_obs o52) -11.855)
	(= (x4_obs o52) -3.51)
	(= (x7_obs o52) -1.883)

	(= (time_obs o53) 53.0)
	(= (x1_obs o53) -11.629)
	(= (x4_obs o53) -3.811)
	(= (x7_obs o53) -1.613)

	(= (time_obs o54) 54.0)
	(= (x1_obs o54) -11.515)
	(= (x4_obs o54) -3.939)
	(= (x7_obs o54) -1.474)

	(= (time_obs o55) 55.0)
	(= (x1_obs o55) -11.23)
	(= (x4_obs o55) -4.697)
	(= (x7_obs o55) -0.932)

	(= (time_obs o56) 56.0)
	(= (x1_obs o56) -10.529)
	(= (x4_obs o56) -6.718)
	(= (x7_obs o56) 0.404)

	(= (time_obs o57) 57.0)
	(= (x1_obs o57) -9.927)
	(= (x4_obs o57) -8.287)
	(= (x7_obs o57) 1.261)

	(= (time_obs o58) 58.0)
	(= (x1_obs o58) -9.538)
	(= (x4_obs o58) -9.186)
	(= (x7_obs o58) 1.551)

	(= (time_obs o59) 59.0)
	(= (x1_obs o59) -9.3)
	(= (x4_obs o59) -9.722)
	(= (x7_obs o59) 1.611)

	(= (time_obs o60) 60.0)
	(= (x1_obs o60) -9.153)
	(= (x4_obs o60) -10.081)
	(= (x7_obs o60) 1.633)

	(= (time_obs o61) 61.0)
	(= (x1_obs o61) -9.574)
	(= (x4_obs o61) -9.297)
	(= (x7_obs o61) 1.146)

	(= (time_obs o62) 62.0)
	(= (x1_obs o62) -10.943)
	(= (x4_obs o62) -6.381)
	(= (x7_obs o62) -0.429)

	(= (time_obs o63) 63.0)
	(= (x1_obs o63) -11.864)
	(= (x4_obs o63) -4.111)
	(= (x7_obs o63) -1.674)

	(= (time_obs o64) 64.0)
	(= (x1_obs o64) -12.025)
	(= (x4_obs o64) -3.374)
	(= (x7_obs o64) -2.045)

	(= (time_obs o65) 65.0)
	(= (x1_obs o65) -11.823)
	(= (x4_obs o65) -3.516)
	(= (x7_obs o65) -1.876)

	(= (time_obs o66) 66.0)
	(= (x1_obs o66) -11.612)
	(= (x4_obs o66) -3.801)
	(= (x7_obs o66) -1.615)

	(= (time_obs o67) 67.0)
	(= (x1_obs o67) -11.505)
	(= (x4_obs o67) -3.929)
	(= (x7_obs o67) -1.477)

	(= (time_obs o68) 68.0)
	(= (x1_obs o68) -11.471)
	(= (x4_obs o68) -3.917)
	(= (x7_obs o68) -1.46)

	(= (time_obs o69) 69.0)
	(= (x1_obs o69) -11.225)
	(= (x4_obs o69) -4.606)
	(= (x7_obs o69) -0.983)

	(= (time_obs o70) 70.0)
	(= (x1_obs o70) -10.533)
	(= (x4_obs o70) -6.643)
	(= (x7_obs o70) 0.366)

)
(:goal
	(and
		(forall (?x - observation) (observed ?x))
	)
)
)
