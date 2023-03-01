call mvn clean package -DskipTests
sudo docker build -t klen-spring-app-tomcat .
sudo  docker run --name klen-spring-app-tomcat -it -p 8080:8080 klen-spring-app-tomcat