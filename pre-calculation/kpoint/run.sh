#!/bin/bash

for i in {04..24}
do
 echo "ini data ke- $i"
 mpirun -np 12 pw.x < WSSe.scf.k$i.in > WSSe.scf.k$i.out
done
