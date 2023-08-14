local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local configs = require "lspconfig.configs"

local servers = {
  "pyright",
  "tsserver",
  "jsonls",
  "rust_analyzer",
  "clangd",
  "gopls",
  "astro-language-server",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

configs.solidity = {
  default_config = {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
    filetypes = { "solidity" },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
  },
}

configs.noir = {
  default_config = {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "nargo", "lsp", "--show-output" },
    filetypes = { "noir", "nr" },
    root_dir = lspconfig.util.find_git_ancestor,
  },
}

lspconfig.solidity.setup {}
lspconfig.noir.setup {}
