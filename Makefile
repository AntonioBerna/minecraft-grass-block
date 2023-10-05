CC=processing-java
TARGET=GrassBlock

all:
	$(CC) --sketch=$(shell pwd)/$(TARGET) --run