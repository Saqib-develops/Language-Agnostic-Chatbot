# Use official Rasa image as base
FROM rasa/rasa:3.6.21-full

WORKDIR /app

# Copy project files
COPY . .

# Install extra dependencies if needed
# RUN pip install -r requirements.txt

# Expose port (Render replaces with $PORT dynamically)
EXPOSE 5005

# Override entrypoint so we can use shell and expand $PORT
ENTRYPOINT ["/bin/bash", "-c"]

# Run Rasa on Render's assigned port
CMD ["rasa run --enable-api --cors '*' --port $PORT"]

