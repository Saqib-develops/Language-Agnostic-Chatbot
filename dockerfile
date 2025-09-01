# Use official Rasa image as base
FROM rasa/rasa:3.6.21-full

# Copy project files
COPY . /app

WORKDIR /app

# Expose a default port (Render will override with $PORT)
EXPOSE 5005

# Override ENTRYPOINT and CMD to allow $PORT expansion
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["rasa run --enable-api --cors '*' --port $PORT"]
