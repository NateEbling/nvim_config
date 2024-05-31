function ColorMyPencils(color)
    color = color or 'onedark'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        'olimorris/onedarkpro.nvim',
        name = 'onedarkpro',
        config = function()
            require('onedarkpro').setup({
                highlights = {
                    ["@function"] = { fg = "#abb2bf"},
                    ["@variable"] = { fg = "#abb2bf"},
                    ["@type.builtin.c"] = { fg = "#e5c07b"},
                    ["@operator"] = { fg = "#abb2bf"},
                    ["@punctuation.bracket"] = { fg = "#abb2bf"},
                    ["@keyword.import.c"] = { fg = "#61afef"},
                    ["@function.call.c"] = { fg = "#abb2bf"},
                    ["@lsp.typemod.function.defaultLibrary.c"] = { fg = "#abb2bf"},
                    ["@string.escape.c"] = { fg = "#d19a66"},
                    ["@string"] = { fg = "#89ca78"},
                    ["@type.definition.c"] = { fg = "#abb2bf"},
                    ["@keyword.type.c"] = { fg = "#e5c07b"},
                    ["@property"] = { fg = "#abb2bf"},
                    ["@lsp.type.macro.c"] = { fg = "#d55fde"},
                    ["@keyword.directive.define.c"] = { fg = "#d55fde"},
                    ["@keyword.return.c"] = { fg = "#d55fde"},
                    ["@keyword.conditional.c"] = { fg = "#d55fde"},
                    ["@keyword.repeat.c"] = { fg = "#d55fde"},
                    ["@keyword.c"] = { fg = "#d55fde"},
                    ["@variable.parameter.c"] = { fg = "#abb2bf"},
                    ["keyword.modifier.c"] = { fg = "#d55fde"},
                    ["@variable.parameter"] = { fg = "#abb2bf"},
                    ["@keyword.conditional.ternary.cpp"] = { fg = "#abb2bf"},
                    ["@lsp.type.class.c"] = { fg = "#abb2bf" },
                    ["@keyword.type.cpp"] = { fg = "#e5c07b" },
                    ["@keyword.import.cpp"] = { fg = "#61afef" },
                    ["@string.cpp"] = { fg = "#89ca78" },
                },
                options = {
                    terminal_colors = false
                }
            })

            vim.cmd('colorscheme onedark')
            ColorMyPencils()
            end
    },

    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                enable = {
                    terminal = false
                },
                styles = {
                    italic = false,
                },
            })

--           vim.cmd("colorscheme rose-pine")

 --          ColorMyPencils()
        end
    },
}
