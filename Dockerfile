# Set the base image
FROM python:3.9-slim-buster 

# Specify the cwd
WORKDIR /app

# Copy the requirements.txt file in the /app file to load the dependencies
COPY requirements.txt .

# Run the command to install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# This will copy all the content from this local directory to the /app directory in container
COPY . .

# Specify the env variables required
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port for the app to run on
EXPOSE 5000

# Command to execute the application
CMD ["flask", "run"]


# To build the docker app use "docker build -t kubernetes-flask-app ."
# The '.' at the end tells the docker command to use the dockerfile present inside the cwd to build the image