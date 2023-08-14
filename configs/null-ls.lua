local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettier,
  formatting.forge_fmt,
  formatting.black,
  formatting.stylua,
  formatting.prettierd,
  formatting.rustfmt,
  formatting.shfmt,
  formatting.gofmt,
  formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
