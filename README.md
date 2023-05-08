# linkedit

The plugin supports `textDocument/linkedEditingRange` that defines in LSP spec.

# usage

```lua
require('linkedit').setup {
  fetch_timeout = 200,
  keyword_pattern = [[\k*]]
}
require('linkedit').setup.filetype('html', {
  ...
})
```
