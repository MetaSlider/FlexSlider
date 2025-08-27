FROM php:8.1-cli

RUN apt-get update && apt-get install -y curl gnupg

# Install Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

WORKDIR /app

COPY . .

# Copy .bashrc to root home
COPY .bashrc /root/.bashrc

# Set terminal environment variable
ENV TERM=xterm-256color

# Start bash as a login shell so it loads .bashrc
CMD ["bash", "--login"]
