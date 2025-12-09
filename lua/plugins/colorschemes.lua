return {
  {
    'propet/colorscheme-persist.nvim',
    lazy = false, -- Required: Load on startup to set the colorscheme
    config = true, -- Required: call setup() function
    dependencies = {
      'nvim-telescope/telescope.nvim',
      -- NOTE: Add your colorscheme plugins here if you want lazy.nvim
      -- to manage them directly within this plugin specification.
      -- Otherwise, ensure they are installed elsewhere in your config.
      -- Example:

      'folke/tokyonight.nvim',
      'rebelot/kanagawa.nvim',
      'Th3Whit3Wolf/space-nvim',
      'ellisonleao/gruvbox.nvim',
      'neanias/everforest-nvim',
      'olimorris/onedarkpro.nvim',
      'bluz71/vim-nightfly-colors',
      'https://codeberg.org/evergarden/nvim.git',
      'olivercederborg/poimandres.nvim',
      'xero/miasma.nvim',
      'ribru17/bamboo.nvim',
      'catppuccin/nvim',
    },
    -- Set a keymap to open the picker
    keys = {
      {
        '<leader>ft', -- Or your preferred keymap
        function()
          require('colorscheme-persist').picker()
        end,
        mode = 'n',
        desc = '[F]ind [T]hemes',
      },
    },
    -- Optional: Configure the plugin (see Configuration section below)
    opts = {
      -- Add custom options here, for example:
      -- fallback = "space-nvim",
    },
  },

  -- 'xiyaowong/transparent.nvim',

  -- vim.keymap.set('n', '<leader>tt', vim.cmd.TransparentToggle, { desc = '[T]oggle [T]ransparent' }),
}
