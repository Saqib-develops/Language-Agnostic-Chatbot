# Use official Rasa image as base
FROM rasa/rasa:3.6.21-full

# Copy project files
COPY . /app

WORKDIR /app

# Install custom action server dependencies if needed
# RUN pip install -r requirements.txt

# Expose a default port (Render will override with $PORT)
EXPOSE 5005

# Start Rasa server and bind to Render's $PORT
CMD ["sh", "-c", "rasa run --enable-api --cors '*' --port $PORT"]
