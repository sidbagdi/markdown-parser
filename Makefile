# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

# CLASSPATH = lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.

# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp $(CLASSPATH) MarkdownParseTest.java

# MarkdownParse.class: MarkdownParse.java
# 	javac MarkdownParse.java


CLASSPATH=lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.
MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
	javac -cp $(CLASSPATH) MarkdownParseTest.java
test: MarkdownParseTest.class
	java -cp $(CLASSPATH) org.junit.runner.JUnitCore MarkdownParseTest

# MarkdownParse.class: MarkdownParse.java
# 	javac MarkdownParse.java


# CPATH=lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:lib/commonmark-0.18.1.jar:.

# MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
# 	javac -cp $(CPATH) MarkdownParseTest.java