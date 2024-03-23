# Build from Source, Contributions and Installation Steps

## Docker

### Setup

*Dependencies*
--------------
+ docker
+ docker-compose

### Pre-Requisites

*Using docker CLI*
------------------

- Build docker image
    ```bash
    docker build --tag=[author/image-name]:[version|tag] {--build-args [ARGUMENT_VARIABLE="value"]} -f [custom-dockerfile-template] [context]
    ```

- Startup using docker run
    ```bash
    docker run -itd \
        --name=[container-name] \
        --restart=unless-stopped \
        -e "ENV_VAR=value" \
        --env-file="/path/to/environment-file" \
        --workdir="[container-working-directory]" \
        -p "[host-system-port]:[container-port]" \
        -v "[host-system-volume]:[container-volume]" \
        [author]/[image-name]:[image-tag|version]
    ```

*Using docker-compose*
----------------------

- Build your base (stage 1) IDE docker image
    ```bash
    docker build --tag=[author]/[image]:[base-distribution] \
                 -f docker/Dockerfiles/[environments]/[environment].Dockerfile \
                 .
    ```

- (Optional) Build all following stages 2 to N on top of your stage 1 docker image (Development Environment)
    - Additional patch docker image templates (Dockerfiles)
        ```bash
        docker build --tag=[author]/[custom-ikmage-name]:[tag|version] \
                     -f [other-dockerfile] \
                     .
        ```

- Design docker-compose.yaml file
    - Notes
        + You can find example docker-compose.yaml configuration files in the 'docker/compose' directory
        - The 'build' instruction/key-value (dictionary) is optional if you have performed multi-staged builds as recommended previously
            + You can use this if you are intending to use the base image directly
    ```yaml
    version: 3.7
    services:
      [environments]:
        image: author-name/image-name:[programming-language]
        container_name: env-[programming-language]
        build:
          context: .
          dockerfile: docker/Dockerfiles/[environments]/[environment].Dockerfile
        restart: unless-stopped
        working_dir: /projects ## Set current working directory
        stdin_open: true # Equivalent to '-i' in 'docker run -itd'
        tty: true # Equivalent to '-t' in 'docker run -itd'
        # ports:
          ## Port Forward/Translate/Map from host system to container
          ## [host-ip-address]:[host-system-port]:[container-port]
        volumes:
          ## Mount volumes from host system into container
          ## [host-system-volume]:[container-volume]:[permissions]
          - ${HOME}/.config:${HOME}/.config
    ```

- Startup compose environment
    ```bash
    docker-compose up -d --build
    ```

- Stop and teardown compose environment
    ```bash
    docker-compose down
    ```

- Start container
    ```bash
    docker-compose start {container-name}
    ```

- Stop container
    ```bash
    docker-compose stop {container-name}
    ```

- Restart container(s)
    ```bash
    docker-compose restart {container-name}
    ```

