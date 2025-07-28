    # Use an official Python runtime as a parent image
    FROM python:3.9-slim-buster

    # Set the working directory in the container
    WORKDIR /app

    # Copy the current directory contents into the container at /app
    COPY . /app

    # Install any needed packages specified in requirements.txt
    # If you don't have a requirements.txt, you can remove or comment out this line.
    # For this simple Flask app, you might just need 'pip install Flask'
    RUN pip install Flask
    # If you have a requirements.txt, use:
    # RUN pip install --no-cache-dir -r requirements.txt

    # Make port 5000 available to the world outside this container
    EXPOSE 5000

    # Define environment variable
    ENV FLASK_APP=app.py

    # Run the application (using Flask's development server for simplicity)
    # For production, you would use a more robust WSGI server like Gunicorn or uWSGI
    CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
    
