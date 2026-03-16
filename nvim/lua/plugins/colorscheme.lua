--
-- remove the comment around vim.cmd.colorscheme to enable it 
-- Ensure you don't have two enabled at once
--
return {
    -- Kanagawa Paper In
    {
      "thesimonho/kanagawa-paper.nvim",
      lazy = false,
      priority = 1000,
      config = function() 
            require("kanagawa-paper").setup({
                dim_inactive = true,
            })
      end,
      init = function()
        vim.cmd.colorscheme("kanagawa-paper-ink")
      end
    },

    -- Gruvbox Material
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_transparent_background = 1
        vim.gruvbox_material_dim_inactive_windows = 1
      end,
      opts = {},
      init = function() 
        -- vim.cmd.colorscheme('gruvbox-material')
      end
    }
}
