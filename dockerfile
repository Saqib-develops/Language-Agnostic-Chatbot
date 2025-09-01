# Use official Rasa image as base
FROM rasa/rasa:3.6.21-full

# Copy project files
COPY . /app

WORKDIR /app

# Install custom action server dependencies if needed
# RUN pip install -r requirements.txt

# Expose Rasa server port
EXPOSE 5005

# Start Rasa server
CMD ["run", "--enable-api", "--cors", "*", "--port", "5005"]
