# DS-5111 VM Setup Guide

This repository contains the automation scripts, configuration files, and package requirements necessary to bootstrap a clean, reproducible data science development environment.

## Prerequisites

Before beginning, ensure you have the following starting point configured:
* An active Ubuntu Server 26.04 VM
* GitHub SSH keys configured on the VM

## Repository Structure

```text
.
├── README.md               # Project documentation and setup guide
├── makefile                # Automation tasks for Python environment management
├── requirements.txt        # Python core library dependencies (pandas, numpy)
└── scripts/
    ├── init.sh             # Base system package installer (make, tree, python venv)
    └── init_git_creds.sh   # Global Git identity configuration script
```

## Set Up Instructions

When your VM is set up, make a clone of my repository on Github. Then, clone your new repository and navigate into the root directory on the VM:

```bash
git clone git@github.com:/<user name>/DS-5111.git
cd DS-5111
```

Please note, I am assuming your repo will be named the same as mine. Once it has been cloned, use nano to open init_git_creds.sh and edit the username and user email to be the ones associated with your account.

Next, intialize the scripts to prepare your virtual environment by executing these commands:

```bash
chmod +x scripts/init.sh scripts/init_git_creds.sh
bash scripts/init.sh
bash scripts/init_git_creds.sh
```

To confirm the set up worked we need to run two quick tests:
* Test for init.sh: Type `tree' in your terminal. If the script worked, it will output your directory structure instead of a "command not found" error.
* Test for init_git_creds.sh: Review the terminal output after running the script. It should output your github email and username.

Then, run the following command to automatically create your virtual environment and install the necessary dependencies:

```bash
make update
```

This triggers the creation of the environment and references requirements.txt to install pandas and numpy. We will then activate the environment and confirm that the required packages are installed by typing:

```bash
. env/bin/activate
pip list
```

You have now set up the virtual environment for DS 5111.

## Further updates

To make updates and push them to Github use the following code:

```bash
git add <name of file or files>
git commit -m "<insert your update message>"
git push
```

For updates that are made in Github, navigate to the root repo folder and run the following command to update your VM:

```bash
git pull
```
