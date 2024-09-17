return {
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
                width = 35,
                position = "left",
                mappings = {
                    ["i"] = "noop",
                    ["h"] = "show_file_details",
                    ["u"] = "navigate_up",
                    ["p"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
                    -- ["z"] = "close_all_nodes",
                    ["Z"] = "expand_all_nodes",
                }
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                }
            },
        }
    }
}

