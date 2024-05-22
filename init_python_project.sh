#!/bin/bash

# Ask for the project name
read -p "Enter the project name: " project_name

# Create a directory for the project
mkdir $project_name
cd $project_name

# Create a virtual environment with pyenv virtualenv and set it as the local virtual environment
pyenv virtualenv $project_name
pyenv local $project_name

# Upgrade pip
pip install --upgrade pip

# Initialize a new git repository
git init

# Create README.md and .gitignore files
touch README.md .gitignore

# Stage README.md and .gitignore
git add README.md .gitignore

# Commit the staged files
git commit -m 'kickstart project'

# Create a new GitHub repository
gh repo create
