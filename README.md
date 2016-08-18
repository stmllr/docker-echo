# Example Docker image which runs a TCP echo daemon

## Build Docker image

```
docker build -t stmllr/echo:v1
```

## Run docker container

```
docker run -d --name echo-daemon -p 2000:2000 stmllr/echo:v1
```

## Test echo daemon

```
echo -en "Hello!\n" | nc localhost 2000
# => Hello!
```

## Cleanup

```
docker stop echo-daemon
docker rm echo-daemon
docker rmi stmllr/echo:v1
```
