FROM python:3.7-slim

WORKDIR /app

# Install system dependencies for building python packages
# (scikit-learn 0.23.1 might need compilation if wheels missing for 3.7-slim, but usually wheels exist)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Download NLTK data
RUN python -m nltk.downloader stopwords

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run command
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
