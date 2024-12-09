CXX = /usr/bin/clang++
CXXFLAGS = -std=c++20 -fcolor-diagnostics -fansi-escape-codes -Wall -g -Wno-deprecated
INCLUDE_DIRS = -I dependencies/include
LIB_DIRS = -L dependencies/library
LIBS = dependencies/library/libglfw.3.4.dylib \
       -framework OpenGL -framework Cocoa -framework IOKit \
       -framework CoreVideo -framework CoreFoundation
SRC_FILES = main.cpp glad.c
TARGET = main

all: $(TARGET)

$(TARGET): $(SRC_FILES)
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) $(LIB_DIRS) $(LIBS) $(SRC_FILES) -o $(TARGET)

clean:
	rm -f $(TARGET)
