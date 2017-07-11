#declare the var of C compiler | CC
#declare the var of C++ compiler | CXX
#declare the var of C compiler's option | CFLAGS
#declare the var of C++ compiler's option | CXXFLAGS
CXX = g++
CXXFLAGS = -g -W
VPATH = src/

#declare the var of target execution file 
TARGET = test



#var need to add $(VAR_NAME)
all: $(TARGET)

#$^ means main.cpp 
#$@ means $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@
clean: 
	rm -rf $(TARGET)
