FROM arm32v7/ubuntu:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    dnsmasq \
  && rm -rf /var/lib/apt/lists/*

# FIXME
ENTRYPOINT ["/bin/bash"]
