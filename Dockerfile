FROM python:3.12-slim
WORKDIR /myapp
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN adduser abhi
COPY --chown=abhi:abhi . .
USER abhi
EXPOSE 8000
CMD ["python","app.py"]
