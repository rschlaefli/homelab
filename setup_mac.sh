#!/bin/sh
poetry run ansible-playbook setup_mac.yml --connection=local --ask-become-pass
