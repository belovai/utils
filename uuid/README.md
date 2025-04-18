# uuid

A shell alias to quickly generate a lowercase UUID, print it to the terminal, and copy it to the clipboard.

## macOS

Add this to your `.zshrc` or `.bashrc`:

```bash
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | tee /dev/tty | pbcopy"
```

## Linux (with xclip)

```bash
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | tee /dev/tty | xclip -selection clipboard"
```

## Linux (with xsel)

```bash
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | tee /dev/tty | xsel --clipboard --input"
```

> On some Linux distributions, `uuidgen` already outputs lowercase – in that case you can skip the `tr` part.

---

Simple, fast, and clipboard-ready. 🔑


