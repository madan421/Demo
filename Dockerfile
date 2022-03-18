# get adoptopenjdk 11 image
FROM adoptopenjdk:11-jre-hotspot
# create a arg "DEPENDENCY"
ARG DEPENDENCY=target/dependency
## copy files in /BOOT-INF/lib to /app/lib => dependencies
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
## copy files in /META-INF to /app/META-INF => meta info: pom.xml
COPY ${DEPENDENCY}/META-INF /app/META-INF
## copy files in /BOOT-INF/classes to /app => application classes
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","demojenkins.DemoJenkinsApplication"]
