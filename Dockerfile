FROM openjdk:8-jdk

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

# Build the project
RUN ./gradlew publish

CMD ["./gradlew", "build"]
