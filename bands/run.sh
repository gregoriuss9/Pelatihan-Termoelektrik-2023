#!/bin/bash

echo "Calculate SCF"
mpirun -np 12 pw.x < WSSe.scf.in > WSSe.scf.out

echo "Calculate NSCF"
mpirun -np 12 pw.x < WSSe.nscfbands.in > WSSe.nscfbands.out

echo "Calculate bands"
mpirun -np 12 bands.x < WSSe.bands.in > WSSe.bands.out

