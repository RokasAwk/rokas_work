# Container image that runs your code
FROM ubuntu:18.04

RUN apt update && apt install nginx -y
