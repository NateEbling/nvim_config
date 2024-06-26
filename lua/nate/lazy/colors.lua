return {  
    "olimorris/onedarkpro.nvim",
    name = "onedark",
    priority = 1000, -- Ensure it loads first
    
    config = function()
        vim.cmd.colorscheme("onedark")
    end
}
