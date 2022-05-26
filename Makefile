

CLASSPATH = lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.
MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java
MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
	javac -cp $(CLASSPATH) MarkdownParseTest.java
test: MarkdownParseTest.class 
	java -cp $(CLASSPATH) org.junit.runner.JUnitCore MarkdownParseTest

# all: target1 target2
# 	echo "All done!"

# target1:
# 	echo "Line 1 printed"

# target2:
# 	echo "Line 2 printed"
# 	touch target2















# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

# CLASSPATH = lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.

# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp $(CLASSPATH) MarkdownParseTest.java

# MarkdownParse.class: MarkdownParse.java
# 	javac MarkdownParse.java




# MarkdownParse.class: MarkdownParse.java
# 	javac MarkdownParse.java


# CPATH=lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.

# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp $(CPATH) MarkdownParseTest.java

# CLASSPATH = lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.
# MarkdownParse.class: MarkdownParse.java
# 	javac MarkdownParse.java
# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp $(CLASSPATH) MarkdownParseTest.java
# 	java -cp $(CLASSPATH) org.junit.runner.JUnitCore MarkdownParseTest