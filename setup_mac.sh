#!/bin/zsh
#
# Mac Setup Script
# Runs the Ansible playbook to configure a new Mac

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Variables
PLAYBOOK="setup_mac.yml"
ANSIBLE_OPTS="--connection=local"
TAGS=""

# Functions
function print_header() {
  echo -e "${BLUE}=======================================${NC}"
  echo -e "${BLUE}$1${NC}"
  echo -e "${BLUE}=======================================${NC}"
}

function print_help() {
  echo "Usage: $0 [options]"
  echo ""
  echo "Options:"
  echo "  -h, --help        Show this help message and exit"
  echo "  -t, --tags        Specify tags to run (comma-separated)"
  echo "  -v, --verbose     Run with verbose output"
  echo "  --skip-tags       Specify tags to skip (comma-separated)"
  echo "  --check           Run in check mode (dry run)"
  echo ""
  echo "Examples:"
  echo "  $0                Run the entire playbook"
  echo "  $0 -t homebrew    Only install Homebrew packages"
  echo "  $0 -t settings    Only apply system settings"
  echo "  $0 -t 'dock,apps' Configure dock and install apps"
  echo ""
}

# Parse arguments
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -h|--help)
      print_help
      exit 0
      ;;
    -t|--tags)
      TAGS="--tags $2"
      shift
      shift
      ;;
    --skip-tags)
      ANSIBLE_OPTS="$ANSIBLE_OPTS --skip-tags $2"
      shift
      shift
      ;;
    -v|--verbose)
      ANSIBLE_OPTS="$ANSIBLE_OPTS -vvv"
      shift
      ;;
    --check)
      ANSIBLE_OPTS="$ANSIBLE_OPTS --check"
      shift
      ;;
    *)
      echo -e "${RED}Unknown option: $1${NC}"
      print_help
      exit 1
      ;;
  esac
done

# Check if Ansible is installed
if ! command -v ansible-playbook &> /dev/null; then
  echo -e "${RED}Ansible is not installed. Please install it first with: brew install ansible${NC}"
  exit 1
fi

# Check if the playbook exists
if [[ ! -f "$PLAYBOOK" ]]; then
  echo -e "${RED}Playbook $PLAYBOOK not found in the current directory${NC}"
  exit 1
fi

# Print header
print_header "Setting up your Mac..."
echo -e "${GREEN}This script will configure your Mac according to the Ansible playbook.${NC}"
echo -e "${YELLOW}You may be prompted for your password to perform privileged operations.${NC}"
echo ""

# Run the playbook
echo -e "${BLUE}Running Ansible playbook...${NC}"
ansible-playbook $PLAYBOOK $ANSIBLE_OPTS $TAGS --ask-become-pass

# Check if the playbook succeeded
if [[ $? -eq 0 ]]; then
  echo ""
  print_header "Setup completed successfully!"
  echo -e "${GREEN}Your Mac has been configured according to the playbook.${NC}"
  echo -e "${YELLOW}You may need to restart your Mac for some changes to take effect.${NC}"
else
  echo ""
  print_header "Setup failed!"
  echo -e "${RED}There was a problem applying the configuration.${NC}"
  echo -e "${YELLOW}Check the error messages above for more information.${NC}"
  exit 1
fi
