# Mac Setup Automation

This repository contains Ansible playbooks and scripts to automate the setup of a new Mac. It installs applications, configures system settings, and sets up development environments.

## Getting Started

### Prerequisites

1. **Install Homebrew**:
   - Visit [brew.sh](https://brew.sh) in your browser
   - Follow the installation instructions (usually involves running a single command in Terminal)
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/rschlaefli/homelab.git
   cd homelab
   ```

3. **Install Ansible**:
   ```bash
   brew install ansible
   ```

4. **Install Ansible dependencies**:
   ```bash
   ansible-galaxy install -r requirements.yml
   ```

### Running the Setup

Once all prerequisites are installed, you can run the setup script:

```bash
./setup_mac.sh
```

This script will execute the Ansible playbook that configures your Mac according to the defined roles and tasks.

## What's Included

The setup includes:
- Installation of common applications via Homebrew and Mac App Store
- Development environment setup (Python, Java, etc.)
- System preferences configuration
- Git configuration
- Keyboard and language settings
- Machine-specific optimizations

## Customization

You can customize the setup by editing:
- `setup_mac.yml` - Main playbook file
- Files in the `roles/` directory to modify specific configurations

## Troubleshooting

If you encounter issues:
1. Make sure all prerequisites are correctly installed
2. Check that you have appropriate permissions
3. Run the script with verbose output for debugging:
   ```bash
   ./setup_mac.sh -vvv
   ``` 