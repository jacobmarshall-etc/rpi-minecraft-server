FROM hypriot/rpi-java:1.7.0-jre

ENV MINECRAFT_VERSION 1.10.2
ENV JAVA_ARGS "-Xmx1024M -Xms1024M"

ADD "https://s3.amazonaws.com/Minecraft.Download/versions/1.10.2/minecraft_server.$MINECRAFT_VERSION.jar" minecraft_server.jar

RUN echo "eula=true" > eula.txt

ENTRYPOINT java $JAVA_ARGS -jar minecraft_server.jar nogui