return {
    -- Themes
    {"catppuccin/nvim", name = "catppuccin", priority = 1000,
        opts = {
            transparent_background = true}
    },
    {"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}},
    
    -- Stuff
    {   
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            window = {
                width = 30,
                position = "left",
                mappings = {
                    ["i"] = "noop",
                    ["h"] = "show_file_details",
                    ["u"] = "navigate_up", 
                } 
            }
        }
    }
}
