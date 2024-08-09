def parse_trace(trace_file):
    last_state = {}
    with open(trace_file, "r") as f:
        all_lines = f.readlines()
        final_state_line = all_lines[-2].strip().replace("(", "").replace(")", "").split(" ")
        for item in final_state_line:
            pair = item.split("=")
            last_state[pair[0]] = float(pair[1])
    
    return last_state


def generate_decoding_domain(observations, radius=20, time_precision=0.005):
    
    pddl_str = "(define (domain flight)\n"
    pddl_str += "\n"
    
    # Predicates
    pddl_str += "(:predicates\n"
    pddl_str += "\t;HS locations\n"
    pddl_str += "\t(flying-straight)\n"
    pddl_str += "\t(adjusting-left)\n"
    pddl_str += "\t(adjusting-right)\n"
    pddl_str += "\n"    
    pddl_str += "\t;monitor locations\n"
    for i in range(len(observations)+1):
        pddl_str += "\t(monitor_{})\n".format(i)
    pddl_str += ")\n"
    pddl_str += "\n"
    
    # Functions
    pddl_str += "(:functions\n"
    pddl_str += "\t;HS variables\n"
    pddl_str += "\t(x1) ; coordinate x\n"
    pddl_str += "\t(x2) ; coordinate y\n"
    pddl_str += "\t(theta) ; orientation\n"
    pddl_str += "\t(v) ; linear speed\n"
    pddl_str += "\t(w) ; angular speed\n"
    pddl_str += "\n"
    
   
    pddl_str += "\t;monitor variables\n"
    pddl_str += "\t(running_time)  ;; time\n"
    pddl_str += "\n"
    
    pddl_str += "\t;objective function\n"
    pddl_str += "\t(max_roughness)\n"
    pddl_str += "\t(roughness)\n"
    pddl_str += "\n"
    
    pddl_str += ")\n"
    pddl_str += "\n"
    
    
    # HS Continuous transitions
    
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += ";;; HS Continuous transitions\n"
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += "\n"
    
    pddl_str += "(:process flow-flying-straight\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(flying-straight)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(increase (x1) (* #t (* (v) (cos (theta)))))\n"
    pddl_str += "\t\t(increase (x2) (* #t (* (v) (sin (theta)))))\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:process flow-adjusting-left\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-left)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(increase (x1) (* #t (* (v) (cos (theta)))))\n"
    pddl_str += "\t\t(increase (x2) (* #t (* (v) (sin (theta)))))\n"
    pddl_str += "\t\t(increase (theta) (* #t 0.31415927))\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:process flow-adjusting-right\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-right)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(increase (x1) (* #t (* (v) (cos (theta)))))\n"
    pddl_str += "\t\t(increase (x2) (* #t (* (v) (sin (theta)))))\n"
    pddl_str += "\t\t(increase (theta) (* #t -0.31415927))\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    
    
    # HS Discrete transitions
    
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += ";;; HS Discrete transitions\n"
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += "\n"
    
    pddl_str += "(:action stop-adjust-left\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-left)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (adjusting-left))\n"
    pddl_str += "\t\t(flying-straight)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:action stop-adjust-right\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-right)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (adjusting-right))\n"
    pddl_str += "\t\t(flying-straight)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:action adjust-left\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(flying-straight)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (flying-straight))\n"
    pddl_str += "\t\t(adjusting-left)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:action adjust-right\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(flying-straight)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (flying-straight))\n"
    pddl_str += "\t\t(adjusting-right)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:action toggle-adjust-LR\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-left)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (adjusting-left))\n"
    pddl_str += "\t\t(adjusting-right)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    pddl_str += "(:action toggle-adjust-LR\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:precondition (and\n"
    pddl_str += "\t\t(adjusting-right)\n"
    pddl_str += "\t)\n"
    pddl_str += "\t:effect (and\n"
    pddl_str += "\t\t(not (adjusting-right))\n"
    pddl_str += "\t\t(adjusting-left)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
    
    
    # HS Invariants
    
    pddl_str += ";;;;;;;;;;;;;;;;;\n"
    pddl_str += ";;; HS Invariants\n"
    pddl_str += ";;;;;;;;;;;;;;;;;\n"
    pddl_str += "\n"
             
    
    # Monitor Continuous transitions
    
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += ";;; Monitor Continuous transitions\n"
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += "\n"
    
    
    for i in range(len(observations)+1):
        pddl_str += "(:process flow-monitor_{}\n".format(i)
        pddl_str += "\t:parameters ()\n"
        pddl_str += "\t:precondition (and\n"
        pddl_str += "\t\t(monitor_{})\n".format(i)
        pddl_str += "\t)\n"
        pddl_str += "\t:effect (and\n"
        pddl_str += "\t\t(increase (running_time) (* #t 1.0))\n"
        pddl_str += "\t)\n"
        pddl_str += ")\n"
        pddl_str += "\n"
        
        
    # Monitor Discrete transitions
    
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += ";;; Monitor Discrete transitions\n"
    pddl_str += ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
    pddl_str += "\n"
        
    for i in range(len(observations)):
        obs = observations[i]
        
        pddl_str += "(:event validate_{}\n".format(i+1)
        pddl_str += "\t:parameters ()\n"
        pddl_str += "\t:precondition (and\n"
        pddl_str += "\t\t(monitor_{})\n".format(i)
        pddl_str += "\t\t(<= {} running_time) ; t_{} - 0.05\n".format(obs[2] - time_precision, i+1)
        pddl_str += "\t\t(> {} running_time) ; t_{} + 0.05\n".format(obs[2] + time_precision, i+1)
        pddl_str += "\t\t(< (+ (^ (- x1 {}) 2) (^ (- x2 {}) 2)) (^ {} 2) ) ; \phi_{}\n".format(round(obs[0],3), round(obs[1],3), radius, i+1)
        pddl_str += "\t)\n"
        pddl_str += "\t:effect (and\n"
        pddl_str += "\t\t(not (monitor_{}))\n".format(i)
        pddl_str += "\t\t(monitor_{})\n".format(i+1)
        pddl_str += "\t\t(increase (roughness) (+ (^ (- x1 {}) 2) (^ (- x2 {}) 2)))\n".format(round(obs[0],3), round(obs[1],3))
        pddl_str += "\t)\n"
        pddl_str += ")\n"
        pddl_str += "\n"
       
             
    # Objective Function    
    
    pddl_str += "(:constraint roughness_bound\n"
    pddl_str += "\t:parameters ()\n"
    pddl_str += "\t:condition (and\n"
    pddl_str += "\t\t(< roughness max_roughness)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += "\n"
        
    pddl_str += ")"
    
    
    return pddl_str
    

def generate_decoding_problem(observations, theta, v, max_roughness):
    
    pddl_str = "(define (problem problem_name) (:domain platoon)\n"
    pddl_str += "\n"

    # Initial state
    pddl_str += "(:init\n"
    pddl_str += "\t; HS initial state\n"
    pddl_str += "\t(= (x1) 0)\n"
    pddl_str += "\t(= (x2) 0)\n"
    pddl_str += "\t(= (theta) {})\n".format(theta)
    pddl_str += "\t(= (v) {})\n".format(v)
    pddl_str += "\t(flying-straight)\n"
    pddl_str += "\t; monitor initial state\n"
    pddl_str += "\t(= (running_time) 0)\n"
    pddl_str += "\t(monitor_0)\n"
    pddl_str += "\t(= (roughness) 0)\n"
    pddl_str += "\t(= (max_roughness) {})\n".format(max_roughness)
    pddl_str += "\n"
    pddl_str += ")\n"
    
    pddl_str += "(:goal\n"
    pddl_str += "\t(and\n"
    pddl_str += "\t\t(monitor_{})\n".format(len(observations))
    pddl_str += "\t\t(< roughness max_roughness)\n"
    pddl_str += "\t)\n"
    pddl_str += ")\n"
    pddl_str += ")\n"
    
    return pddl_str


