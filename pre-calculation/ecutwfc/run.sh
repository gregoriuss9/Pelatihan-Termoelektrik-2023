#!/bin/bash

for i in {20..100..10}
do
 mpirun -np 12 pw.x < WSSe.scf.e$i.in > WSSe.scf.e$i.out
 echo "ini data -i"
done
