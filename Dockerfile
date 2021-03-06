FROM python:3.7.3-stretch

#Working directory
WORKDIR /application

COPY . app.py /application/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

#run app.py at container launch
CMD ["python", "app.py"]
