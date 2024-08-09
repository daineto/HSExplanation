domain: file "domain_9_20.pddl"
problem: file "inst_9_20.pddl"
message: " Time Discretisation = 0.010000"
message: " Digits for representing the integer part of a real =  10.000000"
message: " Digits for representing the fractional part of a real =  4"
type
	 real_type: real(15,4);

	 TIME_type: real(12,7);


const 
	 T:0.010000;


var 
	all_event_true: boolean;
	 TIME[pddlname:"upmurphi_global_clock";]:TIME_type;
	runnin_g_time[pddlname:"running_time";] :  real_type;
	x[pddlname:"x";] :  real_type;


	on[pddlname: "on";] :  boolean;
	of_f[pddlname: "off";] :  boolean;
	monito_r_0[pddlname: "monitor_0";] :  boolean;
	monito_r_1[pddlname: "monitor_1";] :  boolean;
	monito_r_2[pddlname: "monitor_2";] :  boolean;
	monito_r_3[pddlname: "monitor_3";] :  boolean;
	monito_r_4[pddlname: "monitor_4";] :  boolean;
	monito_r_5[pddlname: "monitor_5";] :  boolean;
	monito_r_6[pddlname: "monitor_6";] :  boolean;
	monito_r_7[pddlname: "monitor_7";] :  boolean;
	monito_r_8[pddlname: "monitor_8";] :  boolean;
	monito_r_9[pddlname: "monitor_9";] :  boolean;
	monito_r_10[pddlname: "monitor_10";] :  boolean;
	monito_r_11[pddlname: "monitor_11";] :  boolean;
	monito_r_12[pddlname: "monitor_12";] :  boolean;
	monito_r_13[pddlname: "monitor_13";] :  boolean;
	monito_r_14[pddlname: "monitor_14";] :  boolean;
	monito_r_15[pddlname: "monitor_15";] :  boolean;
	monito_r_16[pddlname: "monitor_16";] :  boolean;
	monito_r_17[pddlname: "monitor_17";] :  boolean;
	monito_r_18[pddlname: "monitor_18";] :  boolean;
	monito_r_19[pddlname: "monitor_19";] :  boolean;
	monito_r_20[pddlname: "monitor_20";] :  boolean;


-- External function declaration 

externfun ext_assignment(value : real_type) : real_type;
externfun increase_x_process_flow_on(x : real_type ; T : real_type ; ): real_type "domain_9_20.h" ;
externfun increase_x_process_flow_of_f(x : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_0(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_1(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_2(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_3(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_4(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_5(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_6(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_7(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_8(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_9(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_10(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_11(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_12(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_13(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_14(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_15(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_16(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_17(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_18(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_19(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_20(runnin_g_time : real_type ; T : real_type ; ): real_type ;
procedure set_on(  value : boolean);
BEGIN
	on := value;
END;

function get_on(): boolean;
BEGIN
	return 	on;
END;

procedure set_of_f(  value : boolean);
BEGIN
	of_f := value;
END;

function get_of_f(): boolean;
BEGIN
	return 	of_f;
END;

procedure set_monito_r_0(  value : boolean);
BEGIN
	monito_r_0 := value;
END;

function get_monito_r_0(): boolean;
BEGIN
	return 	monito_r_0;
END;

procedure set_monito_r_1(  value : boolean);
BEGIN
	monito_r_1 := value;
END;

function get_monito_r_1(): boolean;
BEGIN
	return 	monito_r_1;
END;

procedure set_monito_r_2(  value : boolean);
BEGIN
	monito_r_2 := value;
END;

function get_monito_r_2(): boolean;
BEGIN
	return 	monito_r_2;
END;

procedure set_monito_r_3(  value : boolean);
BEGIN
	monito_r_3 := value;
END;

function get_monito_r_3(): boolean;
BEGIN
	return 	monito_r_3;
END;

procedure set_monito_r_4(  value : boolean);
BEGIN
	monito_r_4 := value;
END;

function get_monito_r_4(): boolean;
BEGIN
	return 	monito_r_4;
END;

procedure set_monito_r_5(  value : boolean);
BEGIN
	monito_r_5 := value;
END;

function get_monito_r_5(): boolean;
BEGIN
	return 	monito_r_5;
END;

procedure set_monito_r_6(  value : boolean);
BEGIN
	monito_r_6 := value;
END;

function get_monito_r_6(): boolean;
BEGIN
	return 	monito_r_6;
END;

procedure set_monito_r_7(  value : boolean);
BEGIN
	monito_r_7 := value;
END;

function get_monito_r_7(): boolean;
BEGIN
	return 	monito_r_7;
END;

procedure set_monito_r_8(  value : boolean);
BEGIN
	monito_r_8 := value;
END;

function get_monito_r_8(): boolean;
BEGIN
	return 	monito_r_8;
END;

procedure set_monito_r_9(  value : boolean);
BEGIN
	monito_r_9 := value;
END;

function get_monito_r_9(): boolean;
BEGIN
	return 	monito_r_9;
END;

procedure set_monito_r_10(  value : boolean);
BEGIN
	monito_r_10 := value;
END;

function get_monito_r_10(): boolean;
BEGIN
	return 	monito_r_10;
END;

procedure set_monito_r_11(  value : boolean);
BEGIN
	monito_r_11 := value;
END;

function get_monito_r_11(): boolean;
BEGIN
	return 	monito_r_11;
END;

procedure set_monito_r_12(  value : boolean);
BEGIN
	monito_r_12 := value;
END;

function get_monito_r_12(): boolean;
BEGIN
	return 	monito_r_12;
END;

procedure set_monito_r_13(  value : boolean);
BEGIN
	monito_r_13 := value;
END;

function get_monito_r_13(): boolean;
BEGIN
	return 	monito_r_13;
END;

procedure set_monito_r_14(  value : boolean);
BEGIN
	monito_r_14 := value;
END;

function get_monito_r_14(): boolean;
BEGIN
	return 	monito_r_14;
END;

procedure set_monito_r_15(  value : boolean);
BEGIN
	monito_r_15 := value;
END;

function get_monito_r_15(): boolean;
BEGIN
	return 	monito_r_15;
END;

procedure set_monito_r_16(  value : boolean);
BEGIN
	monito_r_16 := value;
END;

function get_monito_r_16(): boolean;
BEGIN
	return 	monito_r_16;
END;

procedure set_monito_r_17(  value : boolean);
BEGIN
	monito_r_17 := value;
END;

function get_monito_r_17(): boolean;
BEGIN
	return 	monito_r_17;
END;

procedure set_monito_r_18(  value : boolean);
BEGIN
	monito_r_18 := value;
END;

function get_monito_r_18(): boolean;
BEGIN
	return 	monito_r_18;
END;

procedure set_monito_r_19(  value : boolean);
BEGIN
	monito_r_19 := value;
END;

function get_monito_r_19(): boolean;
BEGIN
	return 	monito_r_19;
END;

procedure set_monito_r_20(  value : boolean);
BEGIN
	monito_r_20 := value;
END;

function get_monito_r_20(): boolean;
BEGIN
	return 	monito_r_20;
END;



procedure flow_on (); 
BEGIN
IF ((on) & ((( x) <= (22.0000)))) THEN 
x := increase_x_process_flow_on(x , T  );

ENDIF ; 

END;

procedure flow_of_f (); 
BEGIN
IF ((of_f) & ((( x) >= (18.0000)))) THEN 
x := increase_x_process_flow_of_f(x , T  );

ENDIF ; 

END;

procedure flow_monito_r_0 (); 
BEGIN
IF ((monito_r_0)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_0(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_1 (); 
BEGIN
IF ((monito_r_1)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_1(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_2 (); 
BEGIN
IF ((monito_r_2)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_2(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_3 (); 
BEGIN
IF ((monito_r_3)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_3(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_4 (); 
BEGIN
IF ((monito_r_4)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_4(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_5 (); 
BEGIN
IF ((monito_r_5)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_5(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_6 (); 
BEGIN
IF ((monito_r_6)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_6(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_7 (); 
BEGIN
IF ((monito_r_7)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_7(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_8 (); 
BEGIN
IF ((monito_r_8)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_8(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_9 (); 
BEGIN
IF ((monito_r_9)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_9(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_10 (); 
BEGIN
IF ((monito_r_10)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_10(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_11 (); 
BEGIN
IF ((monito_r_11)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_11(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_12 (); 
BEGIN
IF ((monito_r_12)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_12(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_13 (); 
BEGIN
IF ((monito_r_13)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_13(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_14 (); 
BEGIN
IF ((monito_r_14)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_14(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_15 (); 
BEGIN
IF ((monito_r_15)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_15(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_16 (); 
BEGIN
IF ((monito_r_16)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_16(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_17 (); 
BEGIN
IF ((monito_r_17)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_17(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_18 (); 
BEGIN
IF ((monito_r_18)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_18(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_19 (); 
BEGIN
IF ((monito_r_19)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_19(runnin_g_time , T  );

ENDIF ; 

END;

procedure flow_monito_r_20 (); 
BEGIN
IF ((monito_r_20)) THEN 
runnin_g_time := increase_runnin_g_time_process_flow_monito_r_20(runnin_g_time , T  );

ENDIF ; 

END;

function validate_1 () : boolean; 
BEGIN
IF ((monito_r_0) & ((( 0.950000) <= (runnin_g_time))) & ((( 1.05000) > (runnin_g_time))) & ((( 18.9500) <= (x))) & ((( 19.0500) >= (x)))) THEN 
monito_r_1:= true; 
monito_r_0:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_2 () : boolean; 
BEGIN
IF ((monito_r_1) & ((( 1.95000) <= (runnin_g_time))) & ((( 2.05000) > (runnin_g_time))) & ((( 19.7500) <= (x))) & ((( 19.8500) >= (x)))) THEN 
monito_r_2:= true; 
monito_r_1:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_3 () : boolean; 
BEGIN
IF ((monito_r_2) & ((( 2.95000) <= (runnin_g_time))) & ((( 3.05000) > (runnin_g_time))) & ((( 20.5500) <= (x))) & ((( 20.6500) >= (x)))) THEN 
monito_r_3:= true; 
monito_r_2:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_4 () : boolean; 
BEGIN
IF ((monito_r_3) & ((( 3.95000) <= (runnin_g_time))) & ((( 4.05000) > (runnin_g_time))) & ((( 20.9800) <= (x))) & ((( 21.0800) >= (x)))) THEN 
monito_r_4:= true; 
monito_r_3:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_5 () : boolean; 
BEGIN
IF ((monito_r_4) & ((( 4.95000) <= (runnin_g_time))) & ((( 5.05000) > (runnin_g_time))) & ((( 20.7800) <= (x))) & ((( 20.8800) >= (x)))) THEN 
monito_r_5:= true; 
monito_r_4:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_6 () : boolean; 
BEGIN
IF ((monito_r_5) & ((( 5.95000) <= (runnin_g_time))) & ((( 6.05000) > (runnin_g_time))) & ((( 20.5800) <= (x))) & ((( 20.6800) >= (x)))) THEN 
monito_r_6:= true; 
monito_r_5:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_7 () : boolean; 
BEGIN
IF ((monito_r_6) & ((( 6.95000) <= (runnin_g_time))) & ((( 7.05000) > (runnin_g_time))) & ((( 20.3800) <= (x))) & ((( 20.4800) >= (x)))) THEN 
monito_r_7:= true; 
monito_r_6:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_8 () : boolean; 
BEGIN
IF ((monito_r_7) & ((( 7.95000) <= (runnin_g_time))) & ((( 8.05000) > (runnin_g_time))) & ((( 20.1800) <= (x))) & ((( 20.2800) >= (x)))) THEN 
monito_r_8:= true; 
monito_r_7:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_9 () : boolean; 
BEGIN
IF ((monito_r_8) & ((( 8.95000) <= (runnin_g_time))) & ((( 9.05000) > (runnin_g_time))) & ((( 19.9800) <= (x))) & ((( 20.0800) >= (x)))) THEN 
monito_r_9:= true; 
monito_r_8:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_10 () : boolean; 
BEGIN
IF ((monito_r_9) & ((( 9.95000) <= (runnin_g_time))) & ((( 10.0500) > (runnin_g_time))) & ((( 19.7800) <= (x))) & ((( 19.8800) >= (x)))) THEN 
monito_r_10:= true; 
monito_r_9:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_11 () : boolean; 
BEGIN
IF ((monito_r_10) & ((( 10.9500) <= (runnin_g_time))) & ((( 11.0500) > (runnin_g_time))) & ((( 19.5800) <= (x))) & ((( 19.6800) >= (x)))) THEN 
monito_r_11:= true; 
monito_r_10:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_12 () : boolean; 
BEGIN
IF ((monito_r_11) & ((( 11.9500) <= (runnin_g_time))) & ((( 12.0500) > (runnin_g_time))) & ((( 19.3800) <= (x))) & ((( 19.4800) >= (x)))) THEN 
monito_r_12:= true; 
monito_r_11:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_13 () : boolean; 
BEGIN
IF ((monito_r_12) & ((( 12.9500) <= (runnin_g_time))) & ((( 13.0500) > (runnin_g_time))) & ((( 19.1800) <= (x))) & ((( 19.2800) >= (x)))) THEN 
monito_r_13:= true; 
monito_r_12:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_14 () : boolean; 
BEGIN
IF ((monito_r_13) & ((( 13.9500) <= (runnin_g_time))) & ((( 14.0500) > (runnin_g_time))) & ((( 18.9800) <= (x))) & ((( 19.0800) >= (x)))) THEN 
monito_r_14:= true; 
monito_r_13:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_15 () : boolean; 
BEGIN
IF ((monito_r_14) & ((( 14.9500) <= (runnin_g_time))) & ((( 15.0500) > (runnin_g_time))) & ((( 18.7800) <= (x))) & ((( 18.8800) >= (x)))) THEN 
monito_r_15:= true; 
monito_r_14:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_16 () : boolean; 
BEGIN
IF ((monito_r_15) & ((( 15.9500) <= (runnin_g_time))) & ((( 16.0500) > (runnin_g_time))) & ((( 18.5800) <= (x))) & ((( 18.6800) >= (x)))) THEN 
monito_r_16:= true; 
monito_r_15:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_17 () : boolean; 
BEGIN
IF ((monito_r_16) & ((( 16.9500) <= (runnin_g_time))) & ((( 17.0500) > (runnin_g_time))) & ((( 18.3800) <= (x))) & ((( 18.4800) >= (x)))) THEN 
monito_r_17:= true; 
monito_r_16:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_18 () : boolean; 
BEGIN
IF ((monito_r_17) & ((( 17.9500) <= (runnin_g_time))) & ((( 18.0500) > (runnin_g_time))) & ((( 19.0200) <= (x))) & ((( 19.1200) >= (x)))) THEN 
monito_r_18:= true; 
monito_r_17:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_19 () : boolean; 
BEGIN
IF ((monito_r_18) & ((( 18.9500) <= (runnin_g_time))) & ((( 19.0500) > (runnin_g_time))) & ((( 19.8200) <= (x))) & ((( 19.9200) >= (x)))) THEN 
monito_r_19:= true; 
monito_r_18:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_20 () : boolean; 
BEGIN
IF ((monito_r_19) & ((( 19.9500) <= (runnin_g_time))) & ((( 20.0500) > (runnin_g_time))) & ((( 20.6200) <= (x))) & ((( 20.7200) >= (x)))) THEN 
monito_r_20:= true; 
monito_r_19:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;



procedure event_check();
 var -- local vars declaration 
   event_triggered : boolean;
   validate_1_triggered :  boolean;
   validate_2_triggered :  boolean;
   validate_3_triggered :  boolean;
   validate_4_triggered :  boolean;
   validate_5_triggered :  boolean;
   validate_6_triggered :  boolean;
   validate_7_triggered :  boolean;
   validate_8_triggered :  boolean;
   validate_9_triggered :  boolean;
   validate_10_triggered :  boolean;
   validate_11_triggered :  boolean;
   validate_12_triggered :  boolean;
   validate_13_triggered :  boolean;
   validate_14_triggered :  boolean;
   validate_15_triggered :  boolean;
   validate_16_triggered :  boolean;
   validate_17_triggered :  boolean;
   validate_18_triggered :  boolean;
   validate_19_triggered :  boolean;
   validate_20_triggered :  boolean;
BEGIN
 event_triggered := true;
   validate_1_triggered := false;
   validate_2_triggered := false;
   validate_3_triggered := false;
   validate_4_triggered := false;
   validate_5_triggered := false;
   validate_6_triggered := false;
   validate_7_triggered := false;
   validate_8_triggered := false;
   validate_9_triggered := false;
   validate_10_triggered := false;
   validate_11_triggered := false;
   validate_12_triggered := false;
   validate_13_triggered := false;
   validate_14_triggered := false;
   validate_15_triggered := false;
   validate_16_triggered := false;
   validate_17_triggered := false;
   validate_18_triggered := false;
   validate_19_triggered := false;
   validate_20_triggered := false;
while (event_triggered) do 
 event_triggered := false;
   if(! validate_1_triggered) then 
   validate_1_triggered := validate_1();
   event_triggered := event_triggered | validate_1_triggered; 
   endif;

   if(! validate_2_triggered) then 
   validate_2_triggered := validate_2();
   event_triggered := event_triggered | validate_2_triggered; 
   endif;

   if(! validate_3_triggered) then 
   validate_3_triggered := validate_3();
   event_triggered := event_triggered | validate_3_triggered; 
   endif;

   if(! validate_4_triggered) then 
   validate_4_triggered := validate_4();
   event_triggered := event_triggered | validate_4_triggered; 
   endif;

   if(! validate_5_triggered) then 
   validate_5_triggered := validate_5();
   event_triggered := event_triggered | validate_5_triggered; 
   endif;

   if(! validate_6_triggered) then 
   validate_6_triggered := validate_6();
   event_triggered := event_triggered | validate_6_triggered; 
   endif;

   if(! validate_7_triggered) then 
   validate_7_triggered := validate_7();
   event_triggered := event_triggered | validate_7_triggered; 
   endif;

   if(! validate_8_triggered) then 
   validate_8_triggered := validate_8();
   event_triggered := event_triggered | validate_8_triggered; 
   endif;

   if(! validate_9_triggered) then 
   validate_9_triggered := validate_9();
   event_triggered := event_triggered | validate_9_triggered; 
   endif;

   if(! validate_10_triggered) then 
   validate_10_triggered := validate_10();
   event_triggered := event_triggered | validate_10_triggered; 
   endif;

   if(! validate_11_triggered) then 
   validate_11_triggered := validate_11();
   event_triggered := event_triggered | validate_11_triggered; 
   endif;

   if(! validate_12_triggered) then 
   validate_12_triggered := validate_12();
   event_triggered := event_triggered | validate_12_triggered; 
   endif;

   if(! validate_13_triggered) then 
   validate_13_triggered := validate_13();
   event_triggered := event_triggered | validate_13_triggered; 
   endif;

   if(! validate_14_triggered) then 
   validate_14_triggered := validate_14();
   event_triggered := event_triggered | validate_14_triggered; 
   endif;

   if(! validate_15_triggered) then 
   validate_15_triggered := validate_15();
   event_triggered := event_triggered | validate_15_triggered; 
   endif;

   if(! validate_16_triggered) then 
   validate_16_triggered := validate_16();
   event_triggered := event_triggered | validate_16_triggered; 
   endif;

   if(! validate_17_triggered) then 
   validate_17_triggered := validate_17();
   event_triggered := event_triggered | validate_17_triggered; 
   endif;

   if(! validate_18_triggered) then 
   validate_18_triggered := validate_18();
   event_triggered := event_triggered | validate_18_triggered; 
   endif;

   if(! validate_19_triggered) then 
   validate_19_triggered := validate_19();
   event_triggered := event_triggered | validate_19_triggered; 
   endif;

   if(! validate_20_triggered) then 
   validate_20_triggered := validate_20();
   event_triggered := event_triggered | validate_20_triggered; 
   endif;

END; -- close while loop 
END;



 function DAs_violate_duration() : boolean ; 
 var -- local vars declaration 
 DA_duration_violated : boolean;
 BEGIN
 DA_duration_violated := false;

 return DA_duration_violated; 
 END; -- close begin


 function DAs_ongoing_in_goal_state() : boolean ; 
 var -- local vars declaration 
 DA_still_ongoing : boolean;
 BEGIN
 DA_still_ongoing := false;

 return DA_still_ongoing; 
 END; -- close begin


procedure apply_continuous_change();
 var -- local vars declaration 
   process_updated : boolean;
 end_while : boolean;   flow_on_enabled :  boolean;
   flow_of_f_enabled :  boolean;
   flow_monito_r_0_enabled :  boolean;
   flow_monito_r_1_enabled :  boolean;
   flow_monito_r_2_enabled :  boolean;
   flow_monito_r_3_enabled :  boolean;
   flow_monito_r_4_enabled :  boolean;
   flow_monito_r_5_enabled :  boolean;
   flow_monito_r_6_enabled :  boolean;
   flow_monito_r_7_enabled :  boolean;
   flow_monito_r_8_enabled :  boolean;
   flow_monito_r_9_enabled :  boolean;
   flow_monito_r_10_enabled :  boolean;
   flow_monito_r_11_enabled :  boolean;
   flow_monito_r_12_enabled :  boolean;
   flow_monito_r_13_enabled :  boolean;
   flow_monito_r_14_enabled :  boolean;
   flow_monito_r_15_enabled :  boolean;
   flow_monito_r_16_enabled :  boolean;
   flow_monito_r_17_enabled :  boolean;
   flow_monito_r_18_enabled :  boolean;
   flow_monito_r_19_enabled :  boolean;
   flow_monito_r_20_enabled :  boolean;
BEGIN
 process_updated := false; end_while := false;
   flow_on_enabled := false;
   flow_of_f_enabled := false;
   flow_monito_r_0_enabled := false;
   flow_monito_r_1_enabled := false;
   flow_monito_r_2_enabled := false;
   flow_monito_r_3_enabled := false;
   flow_monito_r_4_enabled := false;
   flow_monito_r_5_enabled := false;
   flow_monito_r_6_enabled := false;
   flow_monito_r_7_enabled := false;
   flow_monito_r_8_enabled := false;
   flow_monito_r_9_enabled := false;
   flow_monito_r_10_enabled := false;
   flow_monito_r_11_enabled := false;
   flow_monito_r_12_enabled := false;
   flow_monito_r_13_enabled := false;
   flow_monito_r_14_enabled := false;
   flow_monito_r_15_enabled := false;
   flow_monito_r_16_enabled := false;
   flow_monito_r_17_enabled := false;
   flow_monito_r_18_enabled := false;
   flow_monito_r_19_enabled := false;
   flow_monito_r_20_enabled := false;
while (!end_while) do 
    if ((on) & ((( x) <= (22.0000))) &  !flow_on_enabled) then
   process_updated := true;
   flow_on();
   flow_on_enabled := true;
   endif;

   if ((of_f) & ((( x) >= (18.0000))) &  !flow_of_f_enabled) then
   process_updated := true;
   flow_of_f();
   flow_of_f_enabled := true;
   endif;

   if ((monito_r_0) &  !flow_monito_r_0_enabled) then
   process_updated := true;
   flow_monito_r_0();
   flow_monito_r_0_enabled := true;
   endif;

   if ((monito_r_1) &  !flow_monito_r_1_enabled) then
   process_updated := true;
   flow_monito_r_1();
   flow_monito_r_1_enabled := true;
   endif;

   if ((monito_r_2) &  !flow_monito_r_2_enabled) then
   process_updated := true;
   flow_monito_r_2();
   flow_monito_r_2_enabled := true;
   endif;

   if ((monito_r_3) &  !flow_monito_r_3_enabled) then
   process_updated := true;
   flow_monito_r_3();
   flow_monito_r_3_enabled := true;
   endif;

   if ((monito_r_4) &  !flow_monito_r_4_enabled) then
   process_updated := true;
   flow_monito_r_4();
   flow_monito_r_4_enabled := true;
   endif;

   if ((monito_r_5) &  !flow_monito_r_5_enabled) then
   process_updated := true;
   flow_monito_r_5();
   flow_monito_r_5_enabled := true;
   endif;

   if ((monito_r_6) &  !flow_monito_r_6_enabled) then
   process_updated := true;
   flow_monito_r_6();
   flow_monito_r_6_enabled := true;
   endif;

   if ((monito_r_7) &  !flow_monito_r_7_enabled) then
   process_updated := true;
   flow_monito_r_7();
   flow_monito_r_7_enabled := true;
   endif;

   if ((monito_r_8) &  !flow_monito_r_8_enabled) then
   process_updated := true;
   flow_monito_r_8();
   flow_monito_r_8_enabled := true;
   endif;

   if ((monito_r_9) &  !flow_monito_r_9_enabled) then
   process_updated := true;
   flow_monito_r_9();
   flow_monito_r_9_enabled := true;
   endif;

   if ((monito_r_10) &  !flow_monito_r_10_enabled) then
   process_updated := true;
   flow_monito_r_10();
   flow_monito_r_10_enabled := true;
   endif;

   if ((monito_r_11) &  !flow_monito_r_11_enabled) then
   process_updated := true;
   flow_monito_r_11();
   flow_monito_r_11_enabled := true;
   endif;

   if ((monito_r_12) &  !flow_monito_r_12_enabled) then
   process_updated := true;
   flow_monito_r_12();
   flow_monito_r_12_enabled := true;
   endif;

   if ((monito_r_13) &  !flow_monito_r_13_enabled) then
   process_updated := true;
   flow_monito_r_13();
   flow_monito_r_13_enabled := true;
   endif;

   if ((monito_r_14) &  !flow_monito_r_14_enabled) then
   process_updated := true;
   flow_monito_r_14();
   flow_monito_r_14_enabled := true;
   endif;

   if ((monito_r_15) &  !flow_monito_r_15_enabled) then
   process_updated := true;
   flow_monito_r_15();
   flow_monito_r_15_enabled := true;
   endif;

   if ((monito_r_16) &  !flow_monito_r_16_enabled) then
   process_updated := true;
   flow_monito_r_16();
   flow_monito_r_16_enabled := true;
   endif;

   if ((monito_r_17) &  !flow_monito_r_17_enabled) then
   process_updated := true;
   flow_monito_r_17();
   flow_monito_r_17_enabled := true;
   endif;

   if ((monito_r_18) &  !flow_monito_r_18_enabled) then
   process_updated := true;
   flow_monito_r_18();
   flow_monito_r_18_enabled := true;
   endif;

   if ((monito_r_19) &  !flow_monito_r_19_enabled) then
   process_updated := true;
   flow_monito_r_19();
   flow_monito_r_19_enabled := true;
   endif;

   if ((monito_r_20) &  !flow_monito_r_20_enabled) then
   process_updated := true;
   flow_monito_r_20();
   flow_monito_r_20_enabled := true;
   endif;

IF (!process_updated) then
	 end_while:=true;
 else process_updated:=false;
endif;END; -- close while loop 
END;

action rule " turn_on " 
(of_f) & ((( x) < (19.0000))) ==> 
pddlname: " turn-on"; 
BEGIN
on:= true; 
of_f:= false; 

END;

action rule " turn_of_f " 
(on) & ((( x) > (21.0000))) ==> 
pddlname: " turn-off"; 
BEGIN
of_f:= true; 
on:= false; 

END;

clock rule " time passing " 
 (true) ==> 
BEGIN 
 	TIME := TIME + T;

 	 event_check();
	 apply_continuous_change();
END;


startstate "start" 
BEGIN 
TIME := 0.0;
set_on(false);

   set_of_f(false);

   set_monito_r_0(false);

   set_monito_r_1(false);

   set_monito_r_2(false);

   set_monito_r_3(false);

   set_monito_r_4(false);

   set_monito_r_5(false);

   set_monito_r_6(false);

   set_monito_r_7(false);

   set_monito_r_8(false);

   set_monito_r_9(false);

   set_monito_r_10(false);

   set_monito_r_11(false);

   set_monito_r_12(false);

   set_monito_r_13(false);

   set_monito_r_14(false);

   set_monito_r_15(false);

   set_monito_r_16(false);

   set_monito_r_17(false);

   set_monito_r_18(false);

   set_monito_r_19(false);

   set_monito_r_20(false);

   x := 0.0 ;

   runnin_g_time := 0.0 ;

of_f:= true; 
monito_r_0:= true; 
x := 18.2000;
runnin_g_time := 0.00000;
all_event_true := true;
END; -- close startstate

goal "enjoy" 
 (monito_r_20)& !DAs_ongoing_in_goal_state(); 

invariant "todo bien" 
 all_event_true & !DAs_violate_duration();
metric: minimize;


