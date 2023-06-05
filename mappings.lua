local M = {}

M.personal = {
  i = {
    ["gf"] = {
      "<ESC>",
      "escape insert mode",
      opts = { nowait = true }
    },
    ["<C-s>"] = {
      "<cmd> w <CR>",
      "save file"
    }
  },
  n = {
    ["<C-x>"] = {
      "<cmd> bp | bd # <CR>",
      "Switch to previous buffer, closing the current"
    },
    ['<leader>te'] = {
      "<cmd>EthHvr<CR>",
      "Convert wei to ETH",
      opts = { nowait = true }
    }
  }
}
return M
