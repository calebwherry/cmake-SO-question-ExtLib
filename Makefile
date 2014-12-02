.PHONY : clean

CXX = g++
CXXFLAGS = -fPIC
LDFLAGS = -shared

SOURCES = $(shell echo *.cpp)
HEADERS = $(shell echo *.hpp)
OBJECTS = $(SOURCES:.cpp=.o)

TARGET = libExtLib.so

all: $(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)
