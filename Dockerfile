FROM python:3.11-slim
RUN pip install markitdown-mcp
EXPOSE 10000
CMD ["sh", "-c", "markitdown-mcp --http --host 0.0.0.0 --port ${PORT:-10000}"]
