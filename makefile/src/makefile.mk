#makefile.mk
ifndef TARGET
# /wx/CPP/makefile/src/test_include
# notdir
TARGET:=$(notdir $(shell pwd)) #test_include
endif
CXXFLAGS:=-I../../include # g++ -c 编译 自动推导
LDFLAGS:=-L../xcom -L../xthread # 链接 可用于自动推导
LDLIBS:=-lpthread # 链接库 用于自动推导
SRCS:=$(wildcard *.cpp *.cc *.c) #test_include.cpp testcpp.cc testc.c
OBJS:=$(patsubst %.cpp,%.o,$(SRCS)) #test_include.o testcpp.cc testc.c
OBJS:=$(patsubst %.cc,%.o,$(OBJS)) #test_include.o testcpp.o testc.c
OBJS:=$(patsubst %.c,%.o,$(OBJS)) #test_include.o testcpp.o testc.o
$(TARGET):$(OBJS)
	$(CXX) $(LDFLAGS) $^ -o $@ $(LDLIBS)
clean:
	$(RM) $(OBJS) $(TARGET)
#rm -r test.o test
.PHONY: clean # 伪目标
