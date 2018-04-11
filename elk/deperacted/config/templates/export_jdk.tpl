echo "" >> ~/.bashrc
echo "export JAVA_HOME={{ jdk_home }}" >> ~/.bashrc
echo "export CLASSPATH=.:\$JAVA_HOME/lib:\$JAVA_HOME/jre/lib:\$CLASSPATH" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
echo "" >> ~/.bashrc