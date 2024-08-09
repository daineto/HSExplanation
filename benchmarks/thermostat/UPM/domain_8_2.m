domain: file "domain_8_2.pddl"
problem: file "inst_8_2.pddl"
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


-- External function declaration 

externfun ext_assignment(value : real_type) : real_type;
externfun increase_x_process_flow_on(x : real_type ; T : real_type ; ): real_type "domain_8_2.h" ;
externfun increase_x_process_flow_of_f(x : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_0(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_1(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_2(runnin_g_time : real_type ; T : real_type ; ): real_type ;
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



procedure event_check();
 var -- local vars declaration 
   event_triggered : boolean;
BEGIN
 event_triggered := true;
while (event_triggered) do 
 event_triggered := false;
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
BEGIN
 process_updated := false; end_while := false;
   flow_on_enabled := false;
   flow_of_f_enabled := false;
   flow_monito_r_0_enabled := false;
   flow_monito_r_1_enabled := false;
   flow_monito_r_2_enabled := false;
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

action rule " validate_1 " 
(monito_r_0) & ((( 0.950000) <= (runnin_g_time))) & ((( 1.05000) > (runnin_g_time))) & ((( 19.0500) <= (x))) & ((( 19.1500) >= (x))) ==> 
pddlname: " validate_1"; 
BEGIN
monito_r_1:= true; 
monito_r_0:= false; 

END;

action rule " validate_2 " 
(monito_r_1) & ((( 1.95000) <= (runnin_g_time))) & ((( 2.05000) > (runnin_g_time))) & ((( 18.8500) <= (x))) & ((( 18.9500) >= (x))) ==> 
pddlname: " validate_2"; 
BEGIN
monito_r_2:= true; 
monito_r_1:= false; 

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

   x := 0.0 ;

   runnin_g_time := 0.0 ;

of_f:= true; 
monito_r_0:= true; 
x := 19.3000;
runnin_g_time := 0.00000;
all_event_true := true;
END; -- close startstate

goal "enjoy" 
 (monito_r_2)& !DAs_ongoing_in_goal_state(); 

invariant "todo bien" 
 all_event_true & !DAs_violate_duration();
metric: minimize;


