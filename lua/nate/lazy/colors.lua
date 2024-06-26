return {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    dependencies = "rktjmp/lush.nvim",
    init = function()
        vim.o.background = "light"
        vim.cmd.colorscheme("zenbones") -- my favorite
        -- vim.cmd.colorscheme("lackluster-mint")
    end,
}
