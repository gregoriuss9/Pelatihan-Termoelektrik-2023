#!/bin/bash

echo "Calculate SCF"
mpirun -np 12 pw.x < WSSe.scf.in > WSSe.scf.out

echo "Calculate NSCF"
mpirun -np 12 pw.x < WSSe.nscf.in > WSSe.nscf.out

echo "Calculate bands"
mpirun -np 12 dos.x < WSSe.dos.in > WSSe.dos.out
