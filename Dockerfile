# Use an updated Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /my_ecommerce_app

# Copy the requirements file into the container's /my_ecommerce_app directory
COPY requirements.txt /my_ecommerce_app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container's /my_ecommerce_app directory
COPY . /my_ecommerce_app/

# Expose port 8000 for the application
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
