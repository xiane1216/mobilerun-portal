FROM python:3.11-slim
WORKDIR /app
COPY . .
# 安装项目需要的基础依赖
RUN pip install --no-cache-dir fastapi uvicorn websockets python-multipart pydantic python-dotenv
# 启动命令写在Dockerfile里，Railway不用填Start Command
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir fastapi uvicorn websockets python-multipart pydantic python-dotenv
CMD sh -c "uvicorn main:app --host 0.0.0.0 --port \$PORT"

