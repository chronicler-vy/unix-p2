# Використовуємо офіційний образ Tomcat 9 з репозиторію Docker Hub
FROM tomcat:9-jdk8-openjdk-slim

# Копіюємо war-файл додатку в директорію Tomcat
COPY my-webapp/target/my-webapp.war /usr/local/tomcat/webapps/

# Відкриваємо порт 8080, на якому працює Tomcat
EXPOSE 8080