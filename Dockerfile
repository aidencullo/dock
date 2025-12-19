FROM alpine:latest

WORKDIR /app

# Add a simple hello world script
RUN echo '#!/bin/sh' > /app/hello.sh && \
    echo 'echo "Hello from Docker!"' >> /app/hello.sh && \
    chmod +x /app/hello.sh

CMD ["/app/hello.sh"]
