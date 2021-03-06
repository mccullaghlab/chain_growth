
prefix = /usr/local/bin
mpif90 = /opt/local/lib/openmpi/bin/mpif90
f90 = gfortran
flags = -ftree-vectorize -O3 -fopenmp -ffree-line-length-none
lapacklib = /usr/local/lib

fit : chain_growth.f90
	$(f90) -c chain_growth.f90  $(flags) 
	$(f90)  chain_growth.o -o chain_growth.x  $(flags) 
#	cp fit_charges.x /Volumes/LaCie/voth/hydrophobic_fm/villin/charge_fitting

clean:
	rm -f *.o *.mod *.x

