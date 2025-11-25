FROM openjdk:8u342
# 设置工作目录
WORKDIR /app

# 复制 jar 包到容器内
COPY my-demo-0.0.1-SNAPSHOT.jar app.jar

# 暴露应用端口（根据你的 Spring Boot 端口修改，比如 8080）
EXPOSE 8080

# 启动命令：直接前台运行 java -jar
ENTRYPOINT ["java", "-jar", "app.jar"]
