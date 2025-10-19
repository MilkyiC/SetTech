FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR ./

# Copy the current directory contents into the container at /app
COPY . /

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container (optional, if your script runs a server)
EXPOSE 8000

# Run your Python script when the container launches
CMD ["python", "hello.py"]