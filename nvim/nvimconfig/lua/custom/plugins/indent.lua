-- lua/custom/plugins/indent.lua
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        -- Choose your character. You used U+109C0; you can swap to U+2502 if needed.
        char = '\u{109C0}',
      },
      scope = {
        char = '\u{2502}',
        show_start = false,
        show_end = false,
      },
    },
  },
}
