return {
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_enable_italic = false
        --vim.cmd.colorscheme('gruvbox-material')
        vim.g.gruvbox_material_foreground = 'mix'
      end
    },
    { 
    	"ellisonleao/gruvbox.nvim", 
    	lazy = false,
    	priority = 1000, 
    	config = function()
    	  vim.cmd.colorscheme('gruvbox')
    	end
    }
}
