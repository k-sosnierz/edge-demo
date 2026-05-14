ifeq ($(OS),Windows_NT)
    # Windows settings
    EXE = .exe
    RM = del /Q /F
    HEADERS = $(wildcard *.hpp) $(wildcard */*.hpp)
    LIBS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lglew32 -lopengl32
else
    # Linux settings
    EXE =
    RM = rm -f
    HEADERS = $(shell find . -type f -name "*.hpp")
    LIBS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lGLEW -lGL
endif

.PHONY: clean

main$(EXE): main.cpp $(HEADERS)
	g++ main.cpp -o main$(EXE) $(LIBS)

clean:
	$(RM) main$(EXE) logs.txt
