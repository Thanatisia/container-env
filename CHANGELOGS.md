# CHANGELOGS

## Table of Contents
+ [2024-03-20](#2024-03-20)
+ [2024-03-21](#2024-03-21)

## Entry Logs
### 2024-03-20
#### 2039H
+ Initial Commit
- New
    + Added new document 'BUILD.md': Contains Build instructions to build and install from source
    + Added new document 'CHANGELOGS.md'
    + Added new document 'README.md'
    - Added new directory 'docker' for holding docker-related containerized environment resources and files
        + Added new document 'README.md'
        - Added new directory 'Dockerfiles' for holding docker image templates to creating various Containerized Environments and frameworks labs
            - Added new directory 'environments' for various containerized use-case, platforms and purposes, such as Cybersecurity, Networking or Infrastructure
                + Added new Dockerfile 'cybersecurity.Dockerfile' for creating a recreatable Baseline working Cybersecurity Lab environment
                + Added new Dockerfile 'networking.Dockerfile' for creating a baseline networking infrastructure environment

### 2024-03-21
#### 1033H
- New
    - Added new directory 'python' to hold Python-related containerized environment files and resources used to recreate/reinstall the dependencies required to recreate various environments or platforms (i.e. requirements.txt).
        + Added new document 'README.md'
        - Added new directory 'environments/' for storing Python 'requirements.txt' files for installing dependencies required to create a chrootable Python Virtual Environment for various environments that can be used right out of the box (OOTB)
            + Added new requirements.txt file 'cybersecurity.requirement' for holding python packages that is used for a cybersecurity lab environment

#### 1045H
- New
    + Added new 'Makefile' in 'docker/': For automating the controlling/management of docker images and containers using docker run

- Updates
    - Updated Dockerfile 'cybersecurity.Dockerfile' in 'Dockerfiles/environments/'
        + Added Entry Point
        + Added step to install dependencies - python packages

