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

## Release to JitPack

### Create and push a new tag
```bash
# Create a new tag (e.g., v0.4.1)
git tag v0.4.1

# Push the tag to GitHub
git push origin v0.4.1
```

This will automatically:
1. Trigger the GitHub Actions release workflow
2. Build the project
3. Create a GitHub Release with artifacts
4. Trigger JitPack to build and publish the package

### Check JitPack build status
Visit: https://jitpack.io/#com.github.Gunosy/digdag-operator-athena
