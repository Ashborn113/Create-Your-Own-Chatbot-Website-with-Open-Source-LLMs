# Specify the parent image from which we build
FROM python:3.10

# Set the working directory
WORKDIR /LLM_application_chatbot

# install the dependencies and packages in the requirements file
RUN pip3 install --no-cache-dir -r requirements.txt

# copy every content from the local file to the image
COPY . /LLM_application_chatbot

# configure the container to run in an executed manner
CMD ["python", "app.py"]
