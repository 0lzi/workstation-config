-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()


local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html",
  "cssls",
  "bashls",
  "dockerls",
  "ansiblels",
  "helm_ls",
  "terraformls",
  "yamlls"
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.ansiblels.setup {
  filetypes = { "yaml", "yml" },
}

vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}

lspconfig.jinja_lsp.setup {
  filetypes = { "jinja", "j2", "jinja2" },
  name = 'jinja_lsp',
  cmd = { 'jinja-lsp' },
  root_dir = function(fname)
      return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
    end,
  single_file_support = true,
}
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
