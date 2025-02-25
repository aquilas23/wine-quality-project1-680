# Use the official Python 3.8 slim image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY train.py .
COPY predict.py .
COPY winequality-red.csv .
COPY model.pkl .

# Expose port
EXPOSE 5000

# Run the prediction service
CMD ["python", "predict.py"]

