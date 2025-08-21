FROM debian:bullseye-slim

WORKDIR /app

# Download prebuilt LiveKit binary (no compiling needed)
ADD https://github.com/livekit/livekit/releases/download/v1.9.0/livekit_1.9.0_linux_amd64.tar.gz livekit.tar.gz
RUN tar -xzf livekit.tar.gz && mv livekit /usr/local/bin/ && rm livekit.tar.gz

EXPOSE 7880
EXPOSE 7881/udp

CMD ["livekit", "--dev"]
