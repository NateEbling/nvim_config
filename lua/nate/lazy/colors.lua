return {
   'olimorris/onedarkpro.nvim',
    name = 'onedarkpro',
    config = function()
        require('onedarkpro').setup({
            styles = {
                operators = "NONE",
            },
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
            }
        })

        vim.cmd('colorscheme onedark')

        end
    }