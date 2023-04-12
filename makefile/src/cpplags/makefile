# first make
# $^ 依赖 不重复
# $@ 目标
# @ 不显示命令执行
# - 虽然这行代码执行失败，但是让程序继续执行

TARGET = first_make
LIBS = -lpthread
OBJS = first_make.o xdata.o
CXXFLAGS = -I../test_gcc

$(TARGET): $(OBJS)
	@#-@rm test
	@echo "begin build $(TARGET)"
	@$(CXX) -std=c++11 $^ -o $@ $(LIBS)
	@echo "$(TARGET) build success!"
clean:
	$(RM) $(OBJS) $(TARGET)
.PHONY: clean *clean
