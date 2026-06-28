FROM python:3.11-slim
WORKDIR /app
# 把仓库所有文件复制到容器/app目录
COPY . /app
# 安装依赖
RUN pip install --no-cache-dir fastapi uvicorn websockets python-multipart pydantic python-dotenv
# shell方式解析PORT环境变量
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

