EXE=videofilter
OCLLIBSDIR=/opt/ComputeLibrary/build/
CVINCFLAGS=`pkg-config --libs --cflags opencv`
CVLIBFLAGS=`pkg-config --libs opencv` -L${OCLLIBSDIR} -larm_compute -larm_compute_core -lOpenCL
DBGFLAGS= -pg
GCC=g++
SRCS=./videofilter.cpp
all:${EXE}
${EXE}: ${SRCS}
	${GCC} ${DBGFLAGS}  ${CVINCFLAGS} ${SRCS} ${CVLIBFLAGS} -o ${EXE}


profile:
	./${EXE}
	gprof ./${EXE}  gmon.out > prof.txt
clean:
	rm -rf ${EXE} *.o
