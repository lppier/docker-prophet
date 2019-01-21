FROM python:3.6.8-slim

WORKDIR /app

COPY . /app
RUN apt-get -y update  && apt-get install -y \
  python3-dev \
  apt-utils \
  python-dev \
  build-essential \
&& rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools
RUN pip install cython
RUN pip install numpy
RUN pip install matplotlib
RUN pip install pystan
RUN pip install fbprophet

# Following CMD keeps the container running
# Modify CMD to run the app that you require. 
CMD tail -f /dev/null &
