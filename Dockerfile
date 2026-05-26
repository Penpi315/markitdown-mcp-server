FROM node:20-slim
RUN apt-get update && apt-get install -y python3 python3-pip --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install markitdown-mcp --break-system-packages
RUN npm install -g supergateway
EXPOSE 10000
CMD ["sh", "-c", "supergateway --stdio markitdown-mcp --port ${PORT:-10000} --host 0.0.0.0"]
