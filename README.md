# linkedit

The plugin supports `textDocument/linkedEditingRange` that defines in LSP spec.

# Usage

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

# Built-in

### lsp_linked_editing_range (default: enabled)

The `textDocument/linkedEditingRange` source.
This source works only if your language server supports that method.


### nvim_treesitter_locals (default: disabled)

This source is highly experiment.
Use the power of `nvim-treesitter.locals`.


