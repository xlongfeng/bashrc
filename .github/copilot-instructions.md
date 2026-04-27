# Copilot Instructions

## Repository Purpose

This is a `~/.bashrc.d` directory — a collection of bash scripts that are sourced into the interactive shell environment. Scripts here are typically dot-sourced (`. script.sh` or `source script.sh`) from `~/.bashrc`.

## Code Style

Enforced via `.editorconfig`:

- **Indentation**: spaces, 4-space indent
- **Line endings**: LF (Unix)
- **Trailing whitespace**: always trimmed

## Conventions

- Shell scripts in this directory are intended to be *sourced*, not executed directly — avoid requiring `#!/bin/bash` shebangs unless the script is meant to run as a subprocess.
- Prefer POSIX-compatible syntax where possible; fall back to bash-specific features only when needed.
- Function names and variable names should use `snake_case`.
- Guard against double-sourcing with checks like `[[ -n "$_MY_SCRIPT_LOADED" ]] && return; _MY_SCRIPT_LOADED=1`.
