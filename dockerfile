# Use official Rasa image as base
FROM rasa/rasa:3.6.21-full

WORKDIR /app

# Copy project files
COPY . .

# Install extra dependencies if needed
# RUN pip install -r requirements.txt

# Expose port (Render injects its own $PORT, but we document 5005)
EXPOSE 5005

# Use entrypoint from base image ("rasa")
# Important: wrap in shell so $PORT expands
CMD ["bash", "-c", "rasa run --enable-api --cors '*' --port $PORT"]

