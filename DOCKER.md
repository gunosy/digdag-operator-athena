# Docker Usage

## Build and Test with Docker Compose

### Build the project
```bash
docker-compose run --rm build
```

### Run tests
```bash
docker-compose run --rm test
```

### Build Docker image only
```bash
docker-compose build
```

### Clean up
```bash
docker-compose down -v
```

## Manual Docker Commands

### Build image
```bash
docker build -t digdag-operator-athena .
```

### Run build
```bash
docker run --rm -v $(pwd)/build:/app/build digdag-operator-athena ./gradlew publish
```

### Run tests
```bash
docker run --rm -v $(pwd)/build:/app/build digdag-operator-athena ./gradlew test
```
