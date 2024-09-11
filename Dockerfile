# Use Python 3.10 slim image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script into the container
COPY app.py .

# Copy the downloaded model into the container
COPY ./models /app/models

# Expose the port that Gradio will run on
EXPOSE 7860

# Run the Python script when the container launches
CMD ["python", "app.py"]