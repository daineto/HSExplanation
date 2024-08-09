domain: file "domain_0_2.pddl"
problem: file "inst_0_2.pddl"
message: " Time Discretisation = 0.010000"
message: " Digits for representing the integer part of a real =  10.000000"
message: " Digits for representing the fractional part of a real =  4"
type
	 real_type: real(15,4);

	 TIME_type: real(12,7);


const 
	 T:0.010000;

	u : -4.00000;

var 
	all_event_true: boolean;
	 TIME[pddlname:"upmurphi_global_clock";]:TIME_type;
	runnin_g_time[pddlname:"running_time";] :  real_type;
	x1[pddlname:"x1";] :  real_type;
	x2[pddlname:"x2";] :  real_type;
	x3[pddlname:"x3";] :  real_type;
	x4[pddlname:"x4";] :  real_type;
	x5[pddlname:"x5";] :  real_type;
	x6[pddlname:"x6";] :  real_type;
	x7[pddlname:"x7";] :  real_type;
	x8[pddlname:"x8";] :  real_type;
	x9[pddlname:"x9";] :  real_type;


	elf[pddlname: "elf";] :  boolean;
	dreizehn[pddlname: "dreizehn";] :  boolean;
	monito_r_0[pddlname: "monitor_0";] :  boolean;
	monito_r_1[pddlname: "monitor_1";] :  boolean;
	monito_r_2[pddlname: "monitor_2";] :  boolean;


-- External function declaration 

externfun ext_assignment(value : real_type) : real_type;
externfun increase_x9_process_flow_elf(x9 : real_type ; T : real_type ; x1 : real_type ; x2 : real_type ; x3 : real_type ; x4 : real_type ; x5 : real_type ; x6 : real_type ; x7 : real_type ; x8 : real_type ; ): real_type "domain_0_2.h" ;
externfun increase_x8_process_flow_elf(x8 : real_type ; T : real_type ; x6 : real_type ; x9 : real_type ; ): real_type ;
externfun increase_x7_process_flow_elf(x7 : real_type ; T : real_type ; x8 : real_type ; ): real_type ;
externfun increase_x6_process_flow_elf(x6 : real_type ; T : real_type ; x1 : real_type ; x2 : real_type ; x3 : real_type ; x4 : real_type ; x5 : real_type ; x7 : real_type ; x8 : real_type ; x9 : real_type ; ): real_type ;
externfun increase_x5_process_flow_elf(x5 : real_type ; T : real_type ; x3 : real_type ; x6 : real_type ; ): real_type ;
externfun increase_x4_process_flow_elf(x4 : real_type ; T : real_type ; x5 : real_type ; ): real_type ;
externfun increase_x3_process_flow_elf(x3 : real_type ; T : real_type ; x1 : real_type ; x2 : real_type ; x4 : real_type ; x5 : real_type ; x6 : real_type ; x7 : real_type ; x8 : real_type ; x9 : real_type ; ): real_type ;
externfun increase_x2_process_flow_elf(x2 : real_type ; T : real_type ; x3 : real_type ; u : real_type ; ): real_type ;
externfun increase_x1_process_flow_elf(x1 : real_type ; T : real_type ; x2 : real_type ; ): real_type ;
externfun increase_x9_process_flow_dreizehn(x9 : real_type ; T : real_type ; x1 : real_type ; x2 : real_type ; x3 : real_type ; x4 : real_type ; x5 : real_type ; x6 : real_type ; x7 : real_type ; x8 : real_type ; ): real_type ;
externfun increase_x8_process_flow_dreizehn(x8 : real_type ; T : real_type ; x6 : real_type ; x9 : real_type ; ): real_type ;
externfun increase_x7_process_flow_dreizehn(x7 : real_type ; T : real_type ; x8 : real_type ; ): real_type ;
externfun increase_x6_process_flow_dreizehn(x6 : real_type ; T : real_type ; x4 : real_type ; x5 : real_type ; ): real_type ;
externfun increase_x5_process_flow_dreizehn(x5 : real_type ; T : real_type ; x3 : real_type ; x6 : real_type ; ): real_type ;
externfun increase_x4_process_flow_dreizehn(x4 : real_type ; T : real_type ; x5 : real_type ; ): real_type ;
externfun increase_x3_process_flow_dreizehn(x3 : real_type ; T : real_type ; x1 : real_type ; x2 : real_type ; ): real_type ;
externfun increase_x2_process_flow_dreizehn(x2 : real_type ; T : real_type ; x3 : real_type ; u : real_type ; ): real_type ;
externfun increase_x1_process_flow_dreizehn(x1 : real_type ; T : real_type ; x2 : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_0(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_1(runnin_g_time : real_type ; T : real_type ; ): real_type ;
externfun increase_runnin_g_time_process_flow_monito_r_2(runnin_g_time : real_type ; T : real_type ; ): real_type ;
procedure set_elf(  value : boolean);
BEGIN
	elf := value;
END;

function get_elf(): boolean;
BEGIN
	return 	elf;
END;

procedure set_dreizehn(  value : boolean);
BEGIN
	dreizehn := value;
END;

function get_dreizehn(): boolean;
BEGIN
	return 	dreizehn;
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












procedure flow_elf (); 
BEGIN
IF ((elf) & ((( x1) >= (-50.0000))) & ((( x4) >= (-50.0000))) & ((( x7) >= (-50.0000)))) THEN 
x9 := increase_x9_process_flow_elf(x9 , T , x1 , x2 , x3 , x4 , x5 , x6 , x7 , x8  );
x8 := increase_x8_process_flow_elf(x8 , T , x6 , x9  );
x7 := increase_x7_process_flow_elf(x7 , T , x8  );
x6 := increase_x6_process_flow_elf(x6 , T , x1 , x2 , x3 , x4 , x5 , x7 , x8 , x9  );
x5 := increase_x5_process_flow_elf(x5 , T , x3 , x6  );
x4 := increase_x4_process_flow_elf(x4 , T , x5  );
x3 := increase_x3_process_flow_elf(x3 , T , x1 , x2 , x4 , x5 , x6 , x7 , x8 , x9  );
x2 := increase_x2_process_flow_elf(x2 , T , x3 , u  );
x1 := increase_x1_process_flow_elf(x1 , T , x2  );

ENDIF ; 

END;

procedure flow_dreizehn (); 
BEGIN
IF ((dreizehn) & ((( x1) >= (-50.0000))) & ((( x4) >= (-50.0000))) & ((( x7) >= (-50.0000)))) THEN 
x9 := increase_x9_process_flow_dreizehn(x9 , T , x1 , x2 , x3 , x4 , x5 , x6 , x7 , x8  );
x8 := increase_x8_process_flow_dreizehn(x8 , T , x6 , x9  );
x7 := increase_x7_process_flow_dreizehn(x7 , T , x8  );
x6 := increase_x6_process_flow_dreizehn(x6 , T , x4 , x5  );
x5 := increase_x5_process_flow_dreizehn(x5 , T , x3 , x6  );
x4 := increase_x4_process_flow_dreizehn(x4 , T , x5  );
x3 := increase_x3_process_flow_dreizehn(x3 , T , x1 , x2  );
x2 := increase_x2_process_flow_dreizehn(x2 , T , x3 , u  );
x1 := increase_x1_process_flow_dreizehn(x1 , T , x2  );

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

function validate_1 () : boolean; 
BEGIN
IF ((monito_r_0) & ((( 0.950000) <= (runnin_g_time))) & ((( 1.05000) > (runnin_g_time))) & ((( -1.61800) <= (x1))) & ((( -1.51800) >= (x1))) & ((( -0.127000) <= (x4))) & ((( -0.0270000) >= (x4))) & ((( -0.0700000) <= (x7))) & ((( 0.0300000) >= (x7)))) THEN 
monito_r_1:= true; 
monito_r_0:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;

function validate_2 () : boolean; 
BEGIN
IF ((monito_r_1) & ((( 1.95000) <= (runnin_g_time))) & ((( 2.05000) > (runnin_g_time))) & ((( -4.18900) <= (x1))) & ((( -4.08900) >= (x1))) & ((( -0.636000) <= (x4))) & ((( -0.536000) >= (x4))) & ((( -0.218000) <= (x7))) & ((( -0.118000) >= (x7)))) THEN 
monito_r_2:= true; 
monito_r_1:= false; 
		 return true; 
 	 ELSE return false;
	 ENDIF;

END;



procedure event_check();
 var -- local vars declaration 
   event_triggered : boolean;
   validate_1_triggered :  boolean;
   validate_2_triggered :  boolean;
BEGIN
 event_triggered := true;
   validate_1_triggered := false;
   validate_2_triggered := false;
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
 end_while : boolean;   flow_elf_enabled :  boolean;
   flow_dreizehn_enabled :  boolean;
   flow_monito_r_0_enabled :  boolean;
   flow_monito_r_1_enabled :  boolean;
   flow_monito_r_2_enabled :  boolean;
BEGIN
 process_updated := false; end_while := false;
   flow_elf_enabled := false;
   flow_dreizehn_enabled := false;
   flow_monito_r_0_enabled := false;
   flow_monito_r_1_enabled := false;
   flow_monito_r_2_enabled := false;
while (!end_while) do 
    if ((elf) & ((( x1) >= (-50.0000))) & ((( x4) >= (-50.0000))) & ((( x7) >= (-50.0000))) &  !flow_elf_enabled) then
   process_updated := true;
   flow_elf();
   flow_elf_enabled := true;
   endif;

   if ((dreizehn) & ((( x1) >= (-50.0000))) & ((( x4) >= (-50.0000))) & ((( x7) >= (-50.0000))) &  !flow_dreizehn_enabled) then
   process_updated := true;
   flow_dreizehn();
   flow_dreizehn_enabled := true;
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

action rule " disconnect " 
(elf) ==> 
pddlname: " disconnect"; 
BEGIN
dreizehn:= true; 
elf:= false; 

END;

action rule " reconnect " 
(dreizehn) ==> 
pddlname: " reconnect"; 
BEGIN
elf:= true; 
dreizehn:= false; 

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
set_elf(false);

   set_dreizehn(false);

   set_monito_r_0(false);

   set_monito_r_1(false);

   set_monito_r_2(false);

   x1 := 0.0 ;

   x2 := 0.0 ;

   x3 := 0.0 ;

   x4 := 0.0 ;

   x5 := 0.0 ;

   x6 := 0.0 ;

   x7 := 0.0 ;

   x8 := 0.0 ;

   x9 := 0.0 ;


   runnin_g_time := 0.0 ;

elf:= true; 
monito_r_0:= true; 
x1 := 0.00000;
x2 := 0.00000;
x3 := 0.00000;
x4 := 0.00000;
x5 := 0.00000;
x6 := 0.00000;
x7 := 0.00000;
x8 := 0.00000;
x9 := 0.00000;
runnin_g_time := 0.00000;
all_event_true := true;
END; -- close startstate

goal "enjoy" 
 (monito_r_2)& !DAs_ongoing_in_goal_state(); 

invariant "todo bien" 
 all_event_true & !DAs_violate_duration();
metric: minimize;


