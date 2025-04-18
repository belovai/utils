# teleport

A tiny Bash script to quickly SSH into a host from your `~/.ssh/config` using fuzzy search (`fzf`).

## Features

- Pass the SSH host name as an argument:  
  ```bash
  teleport my-host
  ```

- Or pick from a fuzzy list of available `Host` entries in `~/.ssh/config`:  
  ```bash
  teleport
  ```

- Gracefully exits if nothing is selected.

## Installation

1. Save the script as `teleport.sh`:

   ```bash
   mkdir -p ~/.local/bin
   cp teleport.sh ~/.local/bin/
   chmod +x ~/.local/bin/teleport.sh
   ```

2. Add `~/.local/bin` to your `PATH` if it's not already:

   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

3. (Optional) Create a short alias in your shell config:

   ```bash
   echo 'alias tp="teleport.sh"' >> ~/.bashrc
   source ~/.bashrc
   ```

   Now you can simply type:

   ```bash
   tp
   ```

## Requirements

- [fzf](https://github.com/junegunn/fzf) (for interactive fuzzy search)
- A configured `~/.ssh/config` file with `Host` entries

## Example SSH config

```ssh
Host myserver
    HostName 192.168.1.100
    User ubuntu
```

---

Happy teleporting! 🚀

