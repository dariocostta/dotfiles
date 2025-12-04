-- lua/custom/plugins/lualine.lua
return {
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({
        options = {
          theme = 'vscode',
        },
        sections = {
          lualine_c = {
            {
              'filename',
              path = 0, -- relative path (folder + file)
            },
          },
          lualine_x = {
            'encoding',
            'fileformat',
            'filetype',
          },
          lualine_y = {
            'progress',
          },
          lualine_z = {
            'location', -- line and column
            function()
              return os.date('%H:%M') -- current time in HH:MM
            end,
          },
        },
      })
    end,
  },
}
