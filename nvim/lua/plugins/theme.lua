return {

  -- {
  --   'dracula/vim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'dracula'
  --     vim.cmd.colorscheme_bg = "dark"
  --   end

  {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000 ,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }



  -- {
  --     "navarasu/onedark.nvim",
  --     lazy = false,
  --     name = "onedark",
  --     priority = 1000,
  --     config = function()
  --         require('onedark').setup {
  --             style = 'dark',
  --         }
  --         -- require('onedark').load()
  --         -- vim.cmd.colorscheme 'onedark'
  --     end
  -- }
}
