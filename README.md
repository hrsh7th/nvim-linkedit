# linkedit

The plugin supports `textDocument/linkedEditingRange` that defines in LSP spec.

# usage

```lua
-- The default configuration.
require('linkedit').setup {
  enabled = true,
  fetch_timeout = 200,
  keyword_pattern = [[\k*]]
}

-- The filetype specific configuration example.
require('linkedit').setup.filetype('yaml', {
  enabled = false,
})
```
