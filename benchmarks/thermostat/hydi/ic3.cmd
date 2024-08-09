set verbose_level "0"
set on_failure_script_quits "1"
hycomp_read_model
hycomp_compile_model
hycomp_untime_network -m timed -d
hycomp_async2sync_network -r
hycomp_net2mono

hycomp_check_invar_ic3 -v 1

quit
