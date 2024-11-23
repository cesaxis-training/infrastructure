# Using full image to be most similar to the server
FROM ubuntu:24.04

# Ansible version
ENV ANSIBLE_VERSION=2.17

# Install dependencies and ansible directly from apt
RUN apt-get update && \
  apt-get install -y \
  python3-full \
  python3-pip \
  ansible \
  just \
  && apt-get clean all

WORKDIR /ansible
