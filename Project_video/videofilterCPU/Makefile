EXE=videofilter
CVINCFLAGS=`pkg-config --libs --cflags opencv`
CVLIBFLAGS=`pkg-config --libs opencv`
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
