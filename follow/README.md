# follow

A Bash script that traces the full HTTP redirect path for one or more URLs. It follows each redirect manually using `curl`, handling absolute, protocol-relative, and relative `Location` headers.

## Features

- Prints the full chain of redirects:
  ```bash
  follow https://example.com
  ```

  Example output:
  ```
  1: https://example.com 301
  2: https://www.example.com 302
  3: https://www.example.org 200
  ```

- Supports multiple URLs:
  ```bash
  follow https://site1.com https://site2.com
  ```

- Handles:
  - Protocol-relative redirects (`//example.com`)
  - Relative redirects (`/new-path`)
  - Absolute URLs

## Installation

1. Save the script as `follow`:

   ```bash
   mkdir -p ~/.local/bin
   cp follow ~/.local/bin/
   chmod +x ~/.local/bin/follow
   ```

2. Ensure `~/.local/bin` is in your `PATH`:

   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

## Requirements

- `curl`

---

Follow the redirects, and see where the internet leads you. 🌐

