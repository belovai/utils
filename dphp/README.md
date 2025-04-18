# dphp

A simple Bash script to run PHP inside a Docker container. It supports both interactive use and executing PHP scripts from the current working directory.

## Features

- Run an interactive PHP shell:
  ```bash
  dphp 8.3
  ```

- Run a PHP script from the current directory:
  ```bash
  dphp 8.3 script.php
  ```

## Installation

1. Save the script as `dphp`:

   ```bash
   mkdir -p ~/.local/bin
   cp dphp ~/.local/bin/
   chmod +x ~/.local/bin/dphp
   ```

2. Ensure `~/.local/bin` is in your `PATH`:

   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

## Requirements

- [Docker](https://www.docker.com/)
- Internet access to pull the required PHP image (e.g., `php:8.3`)

---

Happy scripting! 🐘

