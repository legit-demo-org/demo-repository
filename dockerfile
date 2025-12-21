# Using an outdated base image on purpose
# This image likely has known CVEs
FROM ubuntu:20.04

# Install without pinning versions
RUN apt-get update && \
    apt-get install -y curl wget build-essential

# Expose a service that isn’t secure
EXPOSE 8080

# Running as root (insecure)
CMD ["bash", "-c", "echo 'Running risky container'; sleep infinity"]
