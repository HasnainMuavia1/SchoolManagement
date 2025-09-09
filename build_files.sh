#!/usr/bin/env bash
set -e
echo "BUILD START"

# Install dependencies
pip3 install -r requirements.txt

# Ensure Django can find settings and project modules
export DJANGO_SETTINGS_MODULE=api.settings
export PYTHONPATH="$(pwd)"

# Create output directories expected by Vercel
mkdir -p staticfiles media

# Collect static files
python3 manage.py collectstatic --noinput

echo "BUILD END"