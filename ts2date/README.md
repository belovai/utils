# ts2date

A simple Bash script that converts Unix timestamps to human-readable datetime format. If no argument is provided, it prints the current timestamp.

## Features

- Convert a Unix timestamp to a readable date with local timezone:
  ```bash
  ts2date 1744991190
  # => 2025-04-18 17:46:30 (CEST)
  ```

- Convert a Unix timestamp to UTC:
  ```bash
  ts2date --utc 1744991190
  # => 2025-04-18 15:46:30 (UTC)
  ```

- Get the current timestamp if no argument is given:
  ```bash
  ts2date
  # => 1744991190
  ```

## Installation

1. Save the script as `ts2date`:

   ```bash
   mkdir -p ~/.local/bin
   cp ts2date ~/.local/bin/
   chmod +x ~/.local/bin/ts2date
   ```

2. Ensure `~/.local/bin` is in your `PATH`:

   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

---

Happy New Year 1970-01-01! 🕒

