TARGET=read_mesh
files:= read_mesh.f90
all: read_mesh.f90
	gfortran read_mesh.f90 -o $(TARGET)

