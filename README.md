# linkedit

The plugin supports `textDocument/linkedEditingRange` that defines in LSP spec.

# Usage

```lua
-- The default configuration.
require('linkedit').setup {
  enabled = true,
  fetch_timeout = 500,
  keyword_pattern = [[\k*]],
  debug = false,
  sources = {
    {
      name = 'lsp_linked_editing_range',
      on = { 'insert', 'operator' },
    },
  },
}

-- The filetype specific configuration example.
require('linkedit').setup.filetype('yaml', {
  enabled = false,
})
```

# Built-in

### lsp_linked_editing_range (default: enabled)

The `textDocument/linkedEditingRange` source.
This source works only if your language server supports that method.


### lsp_document_highlight (default: disabled)

This source is highly experimental.
Use `textDocument/definition` and `textDocument/documentHighlight`.

If you use this feature, I recommend to enable it only in `operator`.

```lua
require('linkedit').setup {
  sources = {
    {
      name = 'lsp_linked_editing_range',
      on = { 'insert', 'operator' },
    },
    {
      name = 'lsp_document_highlight',
      on = { 'operator' },
    },
  },
}
```
