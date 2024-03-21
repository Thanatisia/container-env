# Python Containerized Environments

## Information

** Description **
-----------------

Collection of requirements.txt files that works as a baseline, out-of-the-box recipe
to reinstall the dependencies required to recreate various environments or platforms.

## Environments

** Cybersecurity Lab **
-----------------------

- Python Packages
    + dnstwist[full] : DNS (Domain Name) Typosquatting, Phishing Scanner and Intelligence Gathering CLI utility

## Setup

** Dependencies **
------------------
+ python
+ python-pip
+ python-venv

** Pre-Requisites **
--------------------
- Create a Python Virtual Environment
    - Generate Virtual Environment
        ```bash
        python -m venv [virtual-environment-name]
        ```

    - Chroot into Virtual Environment
        - Linux
            ```bash
            . [virtual-environment-name]/bin/activate
            ```
        - Windows
            ```bash
            .\[virtual-environment-name]\Scripts\activate
            ```

** How to use? **
-----------------
- Install the Python package requirement files as necessary
    ```bash
    python -m pip install -Ur path/to/[target-requirements-file].requirements
    ```

- Check python packages
    ```bash
    python -m pip freeze list
    ```

## Resources

## References

## Remarks

