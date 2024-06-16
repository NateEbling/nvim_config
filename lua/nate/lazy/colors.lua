return {
    {
        "olimorris/onedarkpro",
        config = function()
            require("onedarkpro").setup({
                highlights = {
                    ["@keyword"] = { fg = "#000000" },
                    ["@string"] = { fg = "#216609" },
                    ["@type"] = { fg = "#000000" },
                    ["@property"] = { fg = "#c16565" },
                    ["@variable"] = { fg = "#000000" },
                    ["@punctuation"] = { fg = "#000000" },
                    ["@operator"] = { fg = "#000000" },
                    ["@function"] = { fg = "#000000" },
                    ["@lsp.type.class"] = { fg = "#000000" },
                    ["@punctuation.bracket"] = { fg = "#000000" },
                    ["@comment"] = { fg = "#999960" },
                    ["@lsp.type.macro.c"] = { fg = "#5c21a5" },
                    ["@type.builtin.c"] = { fg = "#000000" },
                    ["@parameter"] = { fg = "#000000" },
                    ["@constant"] = { fg = "#5c21a5" },
                    ["@number"] = { fg = "#c36d2d" },
                },
                options = {

                },
                colors = {
                    onelight = { bg = "#ffffdd" },
                }
            })
            vim.cmd('colorscheme onelight')
            vim.cmd('hi Cursor guibg=black')
            vim.cmd('hi LineNR guifg=#bfbcaf')
            vim.cmd('hi ColorColumn guibg=#d7d7bb')
        end
    },
}
