# Use the base image
FROM mcr.microsoft.com/devcontainers/base:alpine-3.18

# Set environment variables
ENV JAVA_VALIDATOR_VERSION=6.0.11
ENV FIRELY_TERMINAL_VERSION=3.1.0

# Install necessary tools
RUN wget https://dot.net/v1/dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --channel 6.0 --install-dir /usr/share/dotnet \
    && ln -s /usr/share/dotnet/dotnet /usr/local/bin \
    && rm dotnet-install.sh

# Install ICU libraries
RUN apk add --no-cache icu-libs

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Install Java (OpenJDK)
RUN apk add --no-cache openjdk11

# Install additional dependencies
RUN apk update && apk add --no-cache jq findutils curl ca-certificates bash

# Setup for FHIR Validator
RUN mkdir -p /home/vscode/.fhir/validators/ \
    && wget -q https://github.com/hapifhir/org.hl7.fhir.core/releases/download/$JAVA_VALIDATOR_VERSION/validator_cli.jar -O /home/vscode/.fhir/validators/validator_cli.jar

RUN mkdir -p /home/vscode/.fhir/settings/ \
    && mkdir -p /workspace/FHIR-Schulung/

# Copy configuration file
COPY codfsh-config.yaml /home/vscode/.fhir/settings/codfsh-config.yaml

# Switch to the vscode user to install Firely Terminal
USER vscode

# Install Firely Terminal
RUN dotnet tool install --global Firely.Terminal --version $FIRELY_TERMINAL_VERSION

# Add .NET tools to PATH for vscode user
ENV PATH="/home/vscode/.dotnet/tools:${PATH}"

# Switch back to root user to perform remaining installations
USER root

# Install fsh-sushi globally
RUN npm install -g fsh-sushi

# Set working directory
WORKDIR /workspace

# Copy local files into the Docker image
COPY . /workspace

# Set default command
CMD [ "/bin/sh" ]
