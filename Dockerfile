FROM dyhexl/gst-launch:1.14

# node:10
RUN apt-get update \
  && apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs

# remove all package lists
RUN rm -rf /var/lib/apt/lists/*

CMD gst-launch-1.0 --version && node --version
