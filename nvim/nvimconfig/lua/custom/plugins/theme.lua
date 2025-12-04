-- lua/custom/plugins/theme.lua
return {
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    config = function()
      require('vscode').setup({ transparent = true })
      -- vim.cmd.colorscheme('vscode')

      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none', fg = '#dcdcdc' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none', fg = '#c5c5c5' })
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    -- config = function()
    --   require('tokyonight').setup({})
    -- end,
  },
  {
    'tanvirtin/monokai.nvim',
    priority = 1000,
    config = function()
      require('monokai').setup({
        palette = require('monokai').pro,
        custom_hlgroups = {
          -- Normal = {
          --   fg = require('monokai').pro.white,
          --   bg = 'none',
          -- },
          -- NormalNC = {
          --   fg = require('monokai').pro.white,
          --   bg = 'none',
          -- },
        },
      })
    end,
  },
}
