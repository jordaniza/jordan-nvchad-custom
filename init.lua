vim.opt.relativenumber = true
vim.g.copilot_assume_mapped = true

-- set nowrap by default except for markdown and text files
vim.cmd("set nowrap")
vim.cmd([[
  autocmd BufRead,BufNewFile *.md,*.txt set wrap
]])


vim.cmd [[ au BufRead,BufNewFile *.mdx set filetype=markdown ]]
