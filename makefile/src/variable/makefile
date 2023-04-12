# first make
# $^ 依赖 不重复
# $@ 目标
# @ 不显示命令执行
# - 虽然这行代码执行失败，但是让程序继续执行
TARGET = first_make
LIBS = -lpthread

$(TARGET):first_make.cpp xdata.cpp
	@#-@rm test
	@echo "begin build $(TARGET)"
	@$(CXX) -std=c++11 $^ -o $@ $(LIBS)
	@echo "$(TARGET) build success!"
