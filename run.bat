echo "Build project"
call mvn clean package -DskipTests

echo "Prepare docker image"
docker build -t klen-spring-app-tomcat .

echo "Run docker image"
docker run --name klen-spring-app-tomcat -it -p 8080:8080 klen-spring-app-tomcat