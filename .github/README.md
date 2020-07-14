# My dotfiles

My collection of dotfiles.

# Summary

This dotfiles works using a repository as the user `$HOME` directory. With a `.gitignore` with a simple wildcard `*` we can track files using `git add -f` to publish them to the repository.

I'm trying to use ansible and templates to generate the configuration for my software as much as possible, that way applying the playbook with the appropriate tags will only render the configuration for the selected rice, whithout the need of elevated privileges.

# Installation

Installation is performed using the [bootstrap.sh](./.dotfiles/bootstrap.sh) script.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fmartingr/dotfiles/master/.dotfiles/bootstrap.sh)"
```

## Usage

Use the provided `dotfiles` script:

``` bash
# Check everything is ready to use
dotfiles doctor

# Apply all
dotfiles apply

# Apply only rice related things
dotfiles apply --rice-only

# Pull/Push changes
dotfiles push
dotfiles pull

# Pull and apply changes
dotfiles papply
```