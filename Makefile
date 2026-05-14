.PHONY: clean

main: main.cpp $(shell find . -type f -name "*.hpp")
	g++ main.cpp -o main -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lGLEW -lGL

clean:
	rm main logs.txt
