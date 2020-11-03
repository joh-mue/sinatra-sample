#!/bin/bash
yum update -y
yum install git docker -y
service docker start
git clone https://github.com/joh-mue/sinatra-sample.git
cd sinatra-sample
docker build --tag sample .
docker run -d -p 80:4567 sample