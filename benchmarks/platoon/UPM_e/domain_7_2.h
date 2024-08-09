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

double increase_x9_process_flow_elf(double x9, double T, double x1, double x2, double x3, double x4, double x5, double x6, double x7, double x8 ) {
	 return round_k_digits(x9+(( T ) * (((0.713200) * (x1)) + (((3.57300) * (x2)) + (((-0.0964000) * (x3)) + (((0.847200) * (x4)) + (((3.25680) * (x5)) + (((-0.0876000) * (x6)) + (((1.27260) * (x7)) + (((3.07200) * (x8)) + ((-3.13560) * (x9))))))))))),4.000000); 
}

double increase_x8_process_flow_elf(double x8, double T, double x6, double x9 ) {
	 return round_k_digits(x8+(( T ) * ((x6) + ((x9) * (-1.00000)))),4.000000); 
}

double increase_x7_process_flow_elf(double x7, double T, double x8 ) {
	 return round_k_digits(x7+(( T ) * (x8)),4.000000); 
}

double increase_x6_process_flow_elf(double x6, double T, double x1, double x2, double x3, double x4, double x5, double x7, double x8, double x9 ) {
	 return round_k_digits(x6+(( T ) * (((0.871800) * (x1)) + (((3.81400) * (x2)) + (((-0.0754000) * (x3)) + (((1.19360) * (x4)) + (((3.62580) * (x5)) + (((-3.23960) * (x6)) + (((-0.595000) * (x7)) + (((0.129400) * (x8)) + ((-0.0796000) * (x9))))))))))),4.000000); 
}

double increase_x5_process_flow_elf(double x5, double T, double x3, double x6 ) {
	 return round_k_digits(x5+(( T ) * ((x3) + ((x6) * (-1.00000)))),4.000000); 
}

double increase_x4_process_flow_elf(double x4, double T, double x5 ) {
	 return round_k_digits(x4+(( T ) * (x5)),4.000000); 
}

double increase_x3_process_flow_elf(double x3, double T, double x1, double x2, double x4, double x5, double x6, double x7, double x8, double x9 ) {
	 return round_k_digits(x3+(( T ) * (((1.60500) * (x1)) + (((4.86800) * (x2)) + (((-3.57540) * (x3)) + (((-0.819800) * (x4)) + (((0.427000) * (x5)) + (((-0.0450000) * (x6)) + (((-0.194200) * (x7)) + (((0.362600) * (x8)) + ((-0.0946000) * (x9))))))))))),4.000000); 
}

double increase_x2_process_flow_elf(double x2, double T, double x3, double u ) {
	 return round_k_digits(x2+(( T ) * (((x3) * (-1.00000)) + (u))),4.000000); 
}

double increase_x1_process_flow_elf(double x1, double T, double x2 ) {
	 return round_k_digits(x1+(( T ) * (x2)),4.000000); 
}

double increase_x9_process_flow_dreizehn(double x9, double T, double x1, double x2, double x3, double x4, double x5, double x6, double x7, double x8 ) {
	 return round_k_digits(x9+(( T ) * (((0.713200) * (x1)) + (((3.57300) * (x2)) + (((-0.0964000) * (x3)) + (((0.847200) * (x4)) + (((3.25680) * (x5)) + (((-0.0876000) * (x6)) + (((1.27260) * (x7)) + (((3.07200) * (x8)) + ((-3.13560) * (x9))))))))))),4.000000); 
}

double increase_x8_process_flow_dreizehn(double x8, double T, double x6, double x9 ) {
	 return round_k_digits(x8+(( T ) * ((x6) + ((x9) * (-1.00000)))),4.000000); 
}

double increase_x7_process_flow_dreizehn(double x7, double T, double x8 ) {
	 return round_k_digits(x7+(( T ) * (x8)),4.000000); 
}

double increase_x6_process_flow_dreizehn(double x6, double T, double x4, double x5 ) {
	 return round_k_digits(x6+(( T ) * (((1.19360) * (x4)) + (((3.62580) * (x5)) + ((-3.23960) * (x6))))),4.000000); 
}

double increase_x5_process_flow_dreizehn(double x5, double T, double x3, double x6 ) {
	 return round_k_digits(x5+(( T ) * ((x3) + ((x6) * (-1.00000)))),4.000000); 
}

double increase_x4_process_flow_dreizehn(double x4, double T, double x5 ) {
	 return round_k_digits(x4+(( T ) * (x5)),4.000000); 
}

double increase_x3_process_flow_dreizehn(double x3, double T, double x1, double x2 ) {
	 return round_k_digits(x3+(( T ) * (((1.60500) * (x1)) + (((4.86800) * (x2)) + ((-3.57540) * (x3))))),4.000000); 
}

double increase_x2_process_flow_dreizehn(double x2, double T, double x3, double u ) {
	 return round_k_digits(x2+(( T ) * (((x3) * (-1.00000)) + (u))),4.000000); 
}

double increase_x1_process_flow_dreizehn(double x1, double T, double x2 ) {
	 return round_k_digits(x1+(( T ) * (x2)),4.000000); 
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

