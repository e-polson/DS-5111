# DS-5111 VM Setup Guide
This repository contains the automation scripts, configuration files, and package requirements necessary to bootstrap a clean, reproducible data science development environment.

## Prerequisites
Here are the required steps needed to work with this repository:
- Ubuntu Server 26.04 VM
- GitHub SSH keys configured

## Repository structure
.
├── README.md               # Project documentation and setup guide
├── makefile                # Automation tasks for Python environment management
├── requirements.txt        # Python core library dependencies (pandas, numpy)
└── scripts/
    ├── init.sh             # Base system package installer (make, tree, python venv)
    └── init_git_creds.sh   # Global Git identity configuration script

## Instructions
Once you have cloned the repository to your server, you can run `make update' to automatically create the vertual enviornment and install the packages listed in "requirements.txt."
To verify the set up works:
  * type `. env/bin/activate' to activate the environment
  * and `pip list' to confirm all packages are installed
