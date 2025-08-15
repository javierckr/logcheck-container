# syntax=docker/dockerfile:1

FROM docker.io/library/debian:trixie-slim

RUN apt update && \
    apt install -y ca-certificates esmtp esmtp-run logcheck logcheck-database && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Change to user for logcheck
# This user will run logcheck and send emails
USER logcheck
# Set the environment variable for logcheck

# Stop the container after finishing the logcheck run and sent mail
CMD ["sh", "-c", "logcheck logcheck && echo 'Logcheck run completed'"]
