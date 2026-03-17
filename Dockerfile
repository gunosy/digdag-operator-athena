FROM eclipse-temurin:8-jdk

WORKDIR /app

# Copy Gradle wrapper and configuration files
COPY gradlew gradlew.bat ./
COPY gradle ./gradle
COPY build.gradle settings.gradle ./

# Copy source code
COPY src ./src

# Make gradlew executable
RUN chmod +x gradlew

# Set environment variables
ENV JVM_OPTS="-Xmx3200m"
ENV TERM="dumb"

CMD ["./gradlew", "build"]
