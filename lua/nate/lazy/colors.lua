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
    	  require("gruvbox").setup({
    	    overrides = {
    	      ["@punctuation.bracket"] = { fg = "#bdbdbd" },
    	      ["@punctuation.delimiter"] = { fg = "#bdbdbd" },
    	      ["@operator"] = { fg = "#bdbdbd" },
    	      ["@variable.parameter"] = { fg = "#bdbdbd" },
    	      ["@lsp.type.parameter.cpp"] = { fg = "#bdbdbd" },
    	      ["@lsp.type.property.cpp"] = { fg = "#bdbdbd" },
    	      ["@keyword.directive.cpp"] = { fg = "#ebebeb" },
    	      ["@keyword.directive.define.cpp"] = { fg = "#ebebeb" },
    	    }
    	  })
    	  vim.cmd.colorscheme('gruvbox')
    	 end
    }
}
