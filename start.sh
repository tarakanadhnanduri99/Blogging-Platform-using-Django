#!/bin/bash
gunicorn website.wsgi --bind 0.0.0.0:$PORT
