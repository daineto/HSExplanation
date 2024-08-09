#include <cmath>
#include <iostream>
#include <stdlib.h>
#include <stdio.h>

double round_k_digits(double n, unsigned k){
	double prec = pow(0.1,k);
	double round = (n>0) ? (n+prec/2) : (n-prec/2);
	return round-fmod(round,prec);
}

double ext_assignment(double n){
	return round_k_digits(n,4.000000);
}

double increase_x_process_flow_on(double x, double T ) {
	 return round_k_digits(x+(( T ) * (0.800000)),4.000000); 
}

double increase_x_process_flow_of_f(double x, double T ) {
	 return round_k_digits(x+(( T ) * (-0.200000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_0(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_1(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_2(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_3(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_4(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_5(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_6(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_7(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

double increase_runnin_g_time_process_flow_monito_r_8(double runnin_g_time, double T ) {
	 return round_k_digits(runnin_g_time+(( T ) * (1.00000)),4.000000); 
}

