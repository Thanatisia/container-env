# Dockerfile image template for setting up a working baseline containerized Cybersecurity Lab Environment

## Pull Base Image
ARG BASE_IMAGE_NAME
ARG BASE_IMAGE_TAG
FROM ${BASE_IMAGE_NAME}:${BASE_IMAGE_TAG} AS base

## 
