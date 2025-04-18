# jump

A Bash script to quickly jump to a local project folder inside `~/Code/Projects`.

## Features

- Jump to a specific project:
  ```bash
  jump my-project
  ```

- Or use interactive fuzzy search to select one:
  ```bash
  jump
  ```

- Automatically `cd` into the selected directory.

> By default, it searches in `~/Code/Projects`. You can change this path in the script to match your own project directory structure.

## Installation

1. Save the script as `jump`:

   ```bash
   mkdir -p ~/.local/bin
   cp jump ~/.local/bin/
   chmod +x ~/.local/bin/jump
   ```

2. Ensure `~/.local/bin` is in your `PATH`:

   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

3. Optionally, create a shell function to allow directory change in current shell (see below).

## Optional: Use as a shell function

If you want `jump` to change the directory in your current shell session, add this to your `.bashrc` or `.zshrc` instead of making it a standalone script:

```bash
jump() {
  if [[ $# -eq 1 ]]; then
    selected="$1"
  else
    selected=$(find "$HOME/Code/Projects" -mindepth 1 -maxdepth 1 -type d | awk -F '/' '{ print $NF }' | fzf)
  fi

  if [[ -z "$selected" ]]; then
    return
  fi

  cd "$HOME/Code/Projects/$selected"
}
```

## Requirements

- [fzf](https://github.com/junegunn/fzf) (for interactive fuzzy search)

---

Fast and simple local project navigation. 🚀
