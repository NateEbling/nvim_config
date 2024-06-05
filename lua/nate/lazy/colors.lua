return {
   'olimorris/onedarkpro.nvim',
    name = 'onedarkpro',
    config = function()
        require('onedarkpro').setup({
            highlights = {
                ["@string"] = { fg = "#21df51" },
                ["@keyword"] = { fg = "#e3e3e3", bold = true},
                ["@function.zig"] = { fg = "#a797ea" },
                ["@variable"] = { fg = "#c1c1c1"},
                ["@variable.member"] = { fg = "#c1c1c1"},
                ["@function.builtin"] = { fg = "#c56d40" },
                ["@function.call.zig"] = { fg = "#c1c1c1"},
                ["@punctuation.bracket"] = {fg = "#c1c1c1"},
                ["@type"] = { fg = "#6282f4" },
                ["@lsp.type.builtin.zig"] = {fg = "#c56d40"},
                ["@comment"] = {fg = "#a1a171"},
                ["@lsp.type.function.zig"] = {fg = "#c1c1c1"},
                ["@lsp.mod.declaration.zig"] = {fg = "#a797ea"},
                ["@lsp.typemod.namespace.declaration.zig"] = {fg = "#c1c1c1"},
                ["@lsp.typemode.function.generic.zig"] = {fg = "#c1c1c1"},
                ["@Boolean"] = {fg = "#c16565"},
                ["@operator"] = {fg = "#c1c1c1"},
                ["@number"] = {fg = "#c16565"},
                ["@lsp.type.struct.zig"] = {fg = "#c1c1c1"},
                ["@lsp.type.property.zig"] = {fg = "#c1c1c1"},
                ["@lsp.typemod.struct.declaration.zig"] = {fg="#c1c1c1"},
                ["@lsp.typemod.property.declaration.zig"] = {fg="#c1c1c1"},
                ["@variable.member.zig"] = {fg = "#c1c1c1"},
                ["@lsp.type.keywordLiteral.zig"] = {fg = "#c16565"},
                ["@variable.parameter.zig"] = {fg = "#c1c1c1"},
                ["@lsp.typemod.parameter.declaration.zig"] = {fg="#c1c1c1"},
            },
            options = {
                terminal_colors = false
            },
            colors = {
                onedark = { bg = "#222222" }
            }
        })

        vim.cmd('colorscheme onedark')

        end
    }


