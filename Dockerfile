#Base Image
FROM python:3.12-slim

#make the workspace / working directory and set the folder
WORKDIR /app

# copy the requirements to the current folder
COPY requirements.txt .

# Install dependencies from the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#copy the application separately to the current directory
COPY app.py .

# expose the application port 
EXPOSE 5000

#start the application using the comand arguments
CMD ["python3" "app.py"]


