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

### lsp_rename (default: disabled)

The `textDocument/rename` source.
This source works only if your language server supports that method.

The LSP's rename request is supporting multifile rename.
But this plugin does not support it.


