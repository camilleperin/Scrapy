ARG DISTRIB=debian
ARG VERSION=testing-slim
FROM ${DISTRIB}:${VERSION}

LABEL maintainer="camille.perin@protonmail.com"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       	       gcc \
	       python3-dev \
       	       python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade setuptools
RUN pip3 install Scrapy

WORKDIR /scrapy
