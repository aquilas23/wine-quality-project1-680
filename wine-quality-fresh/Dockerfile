FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY train.py .
COPY predict.py .
COPY winequality-red.csv .
COPY model.pkl .

EXPOSE 5000
CMD ["python", "predict.py"]

