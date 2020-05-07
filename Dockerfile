FROM python:3.6-slim
MAINTAINER kodothshyama@gmail.com
COPY . /learn-integration
WORKDIR /learn-integration
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null
