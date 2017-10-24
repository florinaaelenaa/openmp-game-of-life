GCC=gcc
ARGS=-Wall
EXEC_SERIAL=g_serial
EXEC_PARALLEL=g_omp
NAME=Barbu_Florina_331AA_tema1.zip

all: serial parallel

serial: g_serial.c
	$(GCC) $(ARGS) $^ -o $(EXEC_SERIAL)

parallel: g_omp.c
	$(GCC) -fopenmp $(ARGS) $^ -o $(EXEC_PARALLEL)

clean:
	rm $(EXEC_SERIAL) $(EXEC_PARALLEL)

pack:
	zip $(NAME) g_serial.c g_omp.c README Makefile fisier_rezultate.odt

