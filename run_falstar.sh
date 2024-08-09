#!/bin/bash
horizon=(2 4 6 8 10 20 30 40 50 60 70 80 90 100)
instances=(0 1 2 3 4 5 6 7 8 9)

for h in "${horizon[@]}"
do
	for p in "${instances[@]}"
	do
	  falstar benchmarks/flight/falstar/flight_"$p"_"$h".cfg
	done
done
