wl-paste > .temp
pup -f ./.temp -p '.ace_content' text{} > .tmp2.java
java -jar google-java-format-1.22.0-all-deps.jar .tmp2.java  > output.java
cat output.java
echo "Debug: 2s"
sleep 2
sudo ydotool type -d 10 -f output.java
