# Variables
JAVAC = javac
JAVA = java
JAR = org.alloytools.alloy.dist.jar
CLASSPATH = .:$(JAR)

MAIN_CLASS = qcAlloy
SRC = $(MAIN_CLASS).java
TARGET = $(MAIN_CLASS)

# Default target: compile and run
all: compile run

# Compile the Java source file
compile:
	$(JAVAC) -cp $(CLASSPATH) $(SRC)

# Run the compiled Java program
run:
	$(JAVA) -cp $(CLASSPATH) $(TARGET)

# Clean up the compiled files
clean:
	rm -f *.class

