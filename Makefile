.PHONY : clean

CXX = g++
CXXFLAGS = -fPIC
LDFLAGS = -shared

SOURCES = $(shell echo *.cpp)
HEADERS = $(shell echo *.hpp)
OBJECTS = $(SOURCES:.cpp=.o)

SHARED_TARGET = libExtLib.so
STATIC_TARGET = libExtLib.a

all: $(SHARED_TARGET) $(STATIC_TARGET)

clean:
	rm -f $(OBJECTS) $(SHARED_TARGET) $(STATIC_TARGET)

$(STATIC_TARGET): $(OBJECTS)
	ar rcs $(STATIC_TARGET) $(OBJECTS)

$(SHARED_TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)
