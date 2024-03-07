-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Theme config
    { import = 'user.plugins.theme' },

    "tpope/vim-commentary", -- Commenting support -- Commenting support

    -- Autopairing quotes, brackets...
    { import = 'user.plugins.autopairs' },

    -- Splitjoin
    { import = 'user.plugins.splitjoin' },

    -- Status line
    { import = 'user.plugins.lualine' },

    -- Fuzzy finder
    { import = 'user.plugins.telescope' },

    -- File tree sidebar
    { import = 'user.plugins.neo-tree' },

    -- Display buffer as tabs
    { import = 'user.plugins.bufferline' },

    --
    { import = 'user.plugins.indent-blankline' },

    -- Git integration
    { import = 'user.plugins.gitsigns' },

    -- FloaTerm
    { import = 'user.plugins.floaterm' },

    -- Treesitter
    { import = 'user.plugins.treesitter' },

    -- "williamboman/mason.nvim",
    -- "williamboman/mason-lspconfig.nvim",
    -- "neovim/nvim-lspconfig",

    -- { import = 'user.plugins.cmp' },

    -- -- LSP
    -- { import = 'user.plugins.lspconfig' },

}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = true,

  },

  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
})
