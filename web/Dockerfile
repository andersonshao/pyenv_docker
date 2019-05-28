FROM alpine

# Initialize
RUN mkdir -p /data/web
WORKDIR /data/web
COPY requirements.txt /data/web/

# Setup
# RUN apk update
# RUN apk upgrade
RUN apk add --update python3 python3-dev postgresql-client postgresql-dev build-base libffi-dev
RUN pip3 install -i https://pypi.douban.com/simple --upgrade pip
RUN pip3 install -i https://pypi.douban.com/simple -r requirements.txt

# Prepare
COPY . /data/web/
RUN mkdir -p mydjango/static/admin
