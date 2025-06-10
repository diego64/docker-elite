FROM python:3.12-slim
RUN addgroup --gid 2001 dev && adduser --disabled-password --gecos '' --uid 2001 --ingroup dev dev
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
USER dev
ENTRYPOINT ["sh", "-c"]
CMD ["uvicorn app.app:app --host $HOST --port $PORT"]