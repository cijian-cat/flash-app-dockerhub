# 1. 选择轻量 Python 镜像
FROM python:3.11-slim

# 2. 设置维护者信息
LABEL maintainer="cijian@example.com"

# 3. 设置工作目录
WORKDIR /app

# 4. 复制依赖文件并安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. 复制应用代码
COPY app.py .

# 6. 暴露容器端口
EXPOSE 5000

# 7. 设置容器启动命令
CMD ["python", "app.py"]

