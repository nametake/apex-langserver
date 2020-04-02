# apex-langserver

## Installation

```console
docker pull nametake/apex-langserver
```

## Configuration

### Configuration for [coc.nvim](https://github.com/neoclide/coc.nvim)

coc-settings.json

```jsonc
{
  "languageserver": {
    "apex-langserver": {
      "command": "docker",
      "args": ["run", "--rm", "-i", "nametake/apex-langserver:latest"],
      "filetypes": [
        "apex"
      ]
    }
  }
}
```
