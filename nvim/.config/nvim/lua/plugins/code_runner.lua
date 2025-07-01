return {
    "CRAG666/code_runner.nvim",
    config = function()
        require("code_runner").setup({
            mode = "float",
            float = {
                close_key = 'q',
                border = "rounded", -- You can customize the border style: "single", "double", "rounded", etc.
                height = 0.7,
                width = 0.7,
                -- blend = 30,
            },
        })

        vim.keymap.set("n", "<leader>r", function()
            require("code_runner").run_code()
        end, { noremap = true, silent = true })

        vim.keymap.set("n", "q", function()
            require("code_runner").run_close()
        end, { noremap = true, silent = true })
    end,
}


