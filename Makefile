Compiler := g++
Target := Entropy-Arena

SRC_DIR := src
BUILD_DIR := build
SFML_DIR := dependencies/SFML-3.0.2

SRC := $(SRC_DIR)/main.cpp
BIN := $(BUILD_DIR)/$(Target)

CXXFLAGS := -std=c++17 -Iinclude -I$(SFML_DIR)/include -DSFML_STATIC

LDFLAGS := -L$(SFML_DIR)/lib \
           -lsfml-graphics-s -lsfml-window-s -lsfml-system-s \
           -lGL -lX11 -lXrandr -lXi -lXcursor \
           -ludev -lasound -lfreetype \
           -lpthread -lm -ldl

build:
	@mkdir -p $(BUILD_DIR)
	$(Compiler) $(SRC) $(CXXFLAGS) -o $(BIN) $(LDFLAGS)

run: build
	./$(BIN)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: build run clean
